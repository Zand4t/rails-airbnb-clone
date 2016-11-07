class StreamTag < ApplicationRecord
  belongs_to :tag
  belongs_to :stream
end
