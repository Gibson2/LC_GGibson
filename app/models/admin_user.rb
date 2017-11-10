class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # 
  # se coloco el permiso de :registerable,
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
