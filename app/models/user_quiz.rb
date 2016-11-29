class UserQuiz < ApplicationRecord
  belongs_to :user
  belongs_to :quiz
  has_many :user_quiz_answers
  has_many :answers, through: :user_quiz_answers
end
