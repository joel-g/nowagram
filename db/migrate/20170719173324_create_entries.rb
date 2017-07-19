class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.string :caption
      t.timestamps
    end
  end
end
