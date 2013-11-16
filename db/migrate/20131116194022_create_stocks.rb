class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :ticker
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
