class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :nickname 
    validates :birth_day 

  with_options format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ } do
    validates :family_name
    validates :first_name
  end

  # 全角カタカナしか通ってはいけない
  with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
    validates :family_name_kana
    validates :first_name_kana 
  end

  # 半角英数字混合でなければ登録できない
    validates :password,  format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }

  
 end
end
