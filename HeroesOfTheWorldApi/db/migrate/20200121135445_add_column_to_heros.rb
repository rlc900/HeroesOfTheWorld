class AddColumnToHeros < ActiveRecord::Migration[6.0]
  def change
    add_column :heros, :likes, :integer
  end
end
