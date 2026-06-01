class Homework < ApplicationRecord
  validates :title, presence: true
  validates :test_start_date, presence: true
  validates :test_end_date, presence: true

  belongs_to :classroom
  #左側に：をつけるのは、カラム名をつけているから。

  #ransack
  # 検索可能なカラムを許可する
  def self.ransackable_attributes(auth_object = nil)
    %w[
      title
      content
      created_at
      updated_at
    ]
  end

  # 関連も検索したい場合（必要なら）
  def self.ransackable_associations(auth_object = nil)
    %w[classroom]
  end
end
