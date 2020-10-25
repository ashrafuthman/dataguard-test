class Team < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  has_many :employees
end
