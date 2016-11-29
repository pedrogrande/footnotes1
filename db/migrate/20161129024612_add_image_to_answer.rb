class AddImageToAnswer < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :image, :string
  end
end
