class AddClientToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :client, :string
  end
end
