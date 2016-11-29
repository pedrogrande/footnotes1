class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.belongs_to :question, foreign_key: true
      t.string :answer
      t.string :code

      t.timestamps
    end
  end
end
