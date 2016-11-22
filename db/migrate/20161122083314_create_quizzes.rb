class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.string :name
      t.string :description
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
