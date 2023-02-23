class Work < ApplicationRecord
  attr_accessor :watch_date

  scope :search_by_name, -> (name) { where("name ILIKE ?", "%#{name}%") }

  has_one_attached :image
end
