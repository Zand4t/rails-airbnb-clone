class StreamTag < ApplicationRecord
  belongs_to :tag
  belongs_to :stream

  validates :name, presence: :true

end
