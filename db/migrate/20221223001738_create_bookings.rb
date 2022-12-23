class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.datetime :date

      t.timestamps
    end
  end
end
