class CreateWishers < ActiveRecord::Migration[8.0]
  def change
    create_table :wishers do |t|
      t.string :name

      t.timestamps
    end
    add_index :wishers, :name
  end
end
