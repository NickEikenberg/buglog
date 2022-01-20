class Bug < ApplicationRecord
  belongs_to :project
  belongs_to :user
  validates :title, :description, :assigned_to, presence: true

end
