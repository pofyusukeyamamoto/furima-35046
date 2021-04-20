class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :birth_day, presence: true

  with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ } do
    validates :family_name, presence: true
    validates :first_name, presence: true
  end

  # 全角カタカナしか通ってはいけない
  with_options presence: true, format: { with: /\A[ァ-ヶー－]+\z/ } do
    validates :family_name_kana, presence: true
    validates :first_name_kana, presence: true
  end

  # 半角英数字混合でなければ登録できない
  with_options presence: true, format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{7,}/ } do
    validates :encrypted_password, :password, :password_confirmation, length: { minimum: 6 }
  end
end
