class CreateRoomsUsers < ActiveRecord::Migration
  def change
    create_table :rooms_users do |t|
      t.references :room
      t.references :user
      t.timestamps null: false
    end
  end
end
