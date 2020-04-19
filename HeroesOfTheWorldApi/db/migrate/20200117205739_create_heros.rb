class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :quote
      t.string :img_url
      t.string :likes

      t.timestamps
    end
  end
end
