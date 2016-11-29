class Quiz < ApplicationRecord
	has_many :quiz_questions
	has_many :questions, through: :quiz_questions
	has_many :user_quizzes
   	has_many :users, through: :user_quizzes
end
