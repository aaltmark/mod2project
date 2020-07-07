class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :photo_url
      t.text :bio
      t.text :menu

      t.timestamps
    end
  end
end
