class CreateChatrooms < ActiveRecord::Migration
  def change
    create_table :chatrooms do |t|
      t.string :chr_name

      t.timestamps null: false
    end
  end
end
