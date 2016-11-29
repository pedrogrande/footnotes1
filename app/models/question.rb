class Question < ApplicationRecord
	has_many :quiz_questions
	has_many :quizzes, through: :quiz_questions
	has_many :answers
	belongs_to :question_type
	accepts_nested_attributes_for :answers
	
end
