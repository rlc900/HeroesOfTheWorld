class RemoveLikesFromHeros < ActiveRecord::Migration[6.0]
  def change
    remove_column :heros, :likes, :string
  end
end
