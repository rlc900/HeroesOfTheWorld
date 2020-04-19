class CreateStatistics < ActiveRecord::Migration[6.0]
  def change
    create_table :statistics do |t|
      t.belongs_to :hero, null: false, foreign_key: true
      t.string :role
      t.integer :health
      t.string :affiliation

      t.timestamps
    end
  end
end
