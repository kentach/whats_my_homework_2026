class CreateHomeworks < ActiveRecord::Migration[7.2]
  def change
    create_table :homeworks do |t|
      t.timestamps
      t.string :title, null: false
      t.text :content
      t.date :test_start_date, null: false
      t.date :test_end_date, null: false
      #カラム名（またはキー名）を「シンボル」として書いている
      #:名前で定義する

      #終わりに:が付いているものは、ハッシュのキー（オプション指定）
      #オプションをしているだけ。
    end
  end
end
