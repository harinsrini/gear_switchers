class AddProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :price_per_day
      t.string :category
      t.references :products, :user

      t.timestamps
    end
  end
end
