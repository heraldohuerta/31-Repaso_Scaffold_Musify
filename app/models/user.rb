class User < ApplicationRecord
  has_many :playlist
  validates :name, presence: true, uniqueness:true
end
