class CreateDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :destinations do |t|
      t.string :title
      t.string :description
      t.datetime :date
      t.references :user_id, foreign_key: true
      t.integer :latitude
      t.integer :longitude
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
