class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :title
      t.string :description
      t.datetime :date, :default => ''
      t.integer :user_id
      t.integer :latitude
      t.integer :longitude
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
