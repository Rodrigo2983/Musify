class User < ApplicationRecord

has_many :playlist
valdiates :name, :email, presence: true
validates :name, uniqueness: true

end
