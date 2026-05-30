class AddClassroomToUsers < ActiveRecord::Migration[7.2]
  def change
    add_reference :users, :classroom, null: false, foreign_key: true
  end
end
