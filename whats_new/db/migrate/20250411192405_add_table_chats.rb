class AddTableChats < ActiveRecord::Migration[8.0]
  def change
    create_table :chats do |t|
      t.references :sender, foreign_key: {to_table: :users} 
      t.references :receiver, foreign_key: {to_table: :users}
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
