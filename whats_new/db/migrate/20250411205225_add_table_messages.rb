class AddTableMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :messages do |t|
      t.references :user, foreign_key: true, null: true
      t.references :chat, foreign_key: true, null: true
      t.text :body, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
