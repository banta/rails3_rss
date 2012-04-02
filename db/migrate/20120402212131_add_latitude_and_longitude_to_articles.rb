class AddLatitudeAndLongitudeToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :latitude, :string

    add_column :articles, :longitude, :string

  end
end
