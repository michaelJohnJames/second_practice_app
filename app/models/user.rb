class User < ApplicationRecord
  validates :name, :age, :location, presence: true
end
