class Booklist < ApplicationRecord
  belongs_to :user
  belongs_to :homework
end
