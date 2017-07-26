class CreateTripComments < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_comments do |t|
      t.text :body
      t.belongs_to :user, foreign_key: true
      t.belongs_to :trip, foreign_key: true

      t.timestamps
    end
  end
end
