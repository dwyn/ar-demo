class Artist < ApplicationRecord
  has_many :songs
  has_many :genres, through: :songs

  validates :name, presence: true

  scope :find_by_name, -> (name) {where(name: name).all}

  # def self.find_by_name(name)
  #   where(name: name).all
  # end
end
