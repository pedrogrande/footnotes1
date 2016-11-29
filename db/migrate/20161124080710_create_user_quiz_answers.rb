class CreateUserQuizAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :user_quiz_answers do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :quiz, foreign_key: true
      t.belongs_to :answer, foreign_key: true

      t.timestamps
    end
  end
end
