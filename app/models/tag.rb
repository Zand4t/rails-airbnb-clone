class Tag < ApplicationRecord
has_many :stream_tags
has_many :streams, through: :stream_tags
end

