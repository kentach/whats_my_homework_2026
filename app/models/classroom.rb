class Classroom < ApplicationRecord
  has_many :users, dependent: :nullify
  # dependent: :nullify　親レコードを削除しても、子レコードは残す
  has_many :homeworks, dependent: :destroy
end
