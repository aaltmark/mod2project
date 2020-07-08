class AddAddressStateCityZipPricePhoneReserveUrlToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :address, :string
    add_column :restaurants, :state, :string
    add_column :restaurants, :city, :string
    add_column :restaurants, :zip, :string
    add_column :restaurants, :price, :string
    add_column :restaurants, :phone, :string
    add_column :restaurants, :reserve_url, :string
  end
end
