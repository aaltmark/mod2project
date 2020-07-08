class RemoveLocationPhotoUrlBioFromRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :location, :string
    remove_column :restaurants, :photo_url, :string
    remove_column :restaurants, :bio, :text
  end
end
