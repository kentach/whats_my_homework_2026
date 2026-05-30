class Homework < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :test_start_date, presence: true
  validates :test_end_date, presence: true
end
