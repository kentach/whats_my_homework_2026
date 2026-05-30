class Homework < ApplicationRecord
  validates :title, presence: true
  validates :test_start_date, presence: true
  validates :test_end_date, presence: true

  belongs_to :classroom
  #左側に：をつけるのは、カラム名をつけているから。
end
