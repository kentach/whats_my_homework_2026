class Task < ApplicationRecord
  validates :name, presence: true

  has_many :task_completion, dependent: :destroy
  belongs_to :homework
end
