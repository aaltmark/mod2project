class RemoveMenuFromRestaurant < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :menu, :string
  end
end
