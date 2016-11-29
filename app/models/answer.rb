class Answer < ApplicationRecord
  belongs_to :question
  has_many :user_quiz_answers
  has_many :user_quizzes, through: :user_quiz_answers

  mount_uploader :image, AnswerImageUploader
end
