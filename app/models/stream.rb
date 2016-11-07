class Stream < ApplicationRecord
  belongs_to :owner
  belongs_to :comment
  has_many :tags, through: :stream_tags

end
