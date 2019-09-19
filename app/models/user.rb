class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_secure_password

    validates :username, uniqueness: true
    validates :username, presence: true
    validates :password, presence: true
    #validations here
    #validation for format of username
    #can not accept email or /hello-world/ it can not accept slashes in front of

end