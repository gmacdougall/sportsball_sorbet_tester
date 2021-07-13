# typed: strict
class Team < ApplicationRecord
  validates :name, presence: true
end
