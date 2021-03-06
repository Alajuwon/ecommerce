class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         serialize :following, Array
       
       has_many :order

    def admin?
    	role == "admin"
    end

    def guest?
    	role == "guest"
    end
end
