class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :stream

  validates :user, presence: :true

end
