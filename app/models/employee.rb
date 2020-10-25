class Employee < ApplicationRecord
  validates :description, presence: true
  belongs_to :group
  belongs_to :team
  validates :group_id, uniqueness: { scope: :team_id }
end
