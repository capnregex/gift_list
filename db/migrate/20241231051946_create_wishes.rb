class CreateWishes < ActiveRecord::Migration[8.0]
  def change
    create_table :wishes do |t|
      t.references :wisher, null: false, foreign_key: true
      t.string :title
      t.string :url
      t.text :body

      t.timestamps
    end
    add_index :wishes, :title
  end
end
