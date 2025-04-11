class AddTableMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.integer :chat_id, null: false
      t.integer :user_id, null: false
      t.text :body, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
