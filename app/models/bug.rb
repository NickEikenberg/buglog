class Bug < ApplicationRecord
  belongs_to :project
  validates :title, :description, :assigned_to, presence: true

end
