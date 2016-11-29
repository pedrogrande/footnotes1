class UserQuizAnswer < ApplicationRecord
  belongs_to :user_quiz
  belongs_to :answer
end
