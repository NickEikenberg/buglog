class Bug < ApplicationRecord

  validates :title, :description, :assigned_to, presence: true

end
