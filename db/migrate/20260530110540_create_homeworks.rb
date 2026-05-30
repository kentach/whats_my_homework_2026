class CreateHomeworks < ActiveRecord::Migration[7.2]
  def change
    create_table :homeworks do |t|
      t.string :title
      t.text :content
      t.date :test_start_date
      t.date :test_end_date
      t.references :classroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
