class Doctor < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :fee, presence: true
  validates :exp, presence: true
  validates :likes, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  
  scope :recent, -> { order(created_at: :desc) }
  
  # def self.recent
  #   order(created_at: :desc)
  # end
  
end
