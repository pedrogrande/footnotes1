class FixUserQuizAnswer < ActiveRecord::Migration[5.0]
  def change
  	remove_column :user_quiz_answers, :quiz, :belongs_to
  	remove_column :user_quiz_answers, :user, :belongs_to
  	add_column :user_quiz_answers, :user_quiz, :belongs_to
  end
end
