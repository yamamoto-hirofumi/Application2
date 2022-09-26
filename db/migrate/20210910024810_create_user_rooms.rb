class CreateUserRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :user_rooms do |t|
      t.bigint :user_id
      t.bigint :room_id

      t.timestamps
    end
    add_foreign_key :user_rooms, :users
    add_foreign_key :user_rooms, :rooms
  end
end
