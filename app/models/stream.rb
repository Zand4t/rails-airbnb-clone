class Stream < ApplicationRecord
  belongs_to :user
  has_many :stream_tags
  has_many :tags, through: :stream_tags
  has_many :comments, dependent: :destroy
  # has_many :users, through: :comments

  validates :name, presence: :true
  validates :user, presence: :true


end
