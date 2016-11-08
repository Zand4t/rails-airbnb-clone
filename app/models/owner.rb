class Owner < ApplicationRecord
has_many :streams

validates :name, presence: :true
end
