class CreateTaskCompletions < ActiveRecord::Migration[7.2]
  def change
    create_table :task_completions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true
      t.datetime :completed_at
      t.text :memo
      t.integer :score
      t.timestamps
    end
  end
end
