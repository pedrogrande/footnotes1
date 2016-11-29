class FixStuff2 < ActiveRecord::Migration[5.0]
  def change
  	remove_column :quiz_questions, :questions, :belongs_to
  	add_column :quiz_questions, :question_id, :integer
  end
end
