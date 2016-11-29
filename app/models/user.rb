class User < ApplicationRecord
	has_one :profile
	# accepts_nested_attributes_for :profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   has_one :profile
   has_many :user_quizzes
   has_many :quizzes, through: :user_quizzes

end
