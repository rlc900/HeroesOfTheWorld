class RemoveHealthFromStatistics < ActiveRecord::Migration[6.0]
  def change

    remove_column :statistics, :health, :integer
  end
end
