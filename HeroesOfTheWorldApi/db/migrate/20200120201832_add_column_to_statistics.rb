class AddColumnToStatistics < ActiveRecord::Migration[6.0]
  def change
    add_column :statistics, :health, :string
  end
end
