class Project < ApplicationRecord
  has_many :bugs
  validates :name, presence: true
end
