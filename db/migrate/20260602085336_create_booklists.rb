class CreateBooklists < ActiveRecord::Migration[7.2]
  def change
    create_table :booklists do |t|
      t.references :user, null: false, foreign_key: true
      t.references :homework, null: false, foreign_key: true
      t.timestamps
    end
    add_index :booklists, [:user_id, :homework_id], unique: true
  end
end
