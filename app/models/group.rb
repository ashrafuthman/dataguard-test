class Group < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :employees, dependent: :destroy
  has_many :teams, through: :employees
  mount_uploader :photo, PhotoUploader
end