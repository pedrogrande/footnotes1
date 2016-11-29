class AlterProfile < ActiveRecord::Migration[5.0]
  def change
  	remove_column :profiles, :year, :integer
  	add_column :profiles, :year, :string
  end
end
