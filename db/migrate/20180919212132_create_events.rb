class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :description
      t.datetime :date
      t.references :destination_id, foreign_key: true

      t.timestamps
    end
  end
end
