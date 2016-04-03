class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.string :email
      t.string :from_address
      t.string :to_address
      t.integer :distance
      t.integer :living_area
      t.integer :storage_area
      t.boolean :piano
      t.boolean :help
      t.integer :price

      t.timestamps
    end
  end
end
