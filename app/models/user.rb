class User < ApplicationRecord

validates :name, presence: :true

has_many :comments
has_many :streams
validates :description, presence: :true, if: :owner?

end
