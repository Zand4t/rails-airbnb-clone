class Stream < ApplicationRecord
  belongs_to :owner
  has_many :stream_tags
  has_many :tags, through: :stream_tags
  has_many :comments
  has_many :users, through: :comments

end
