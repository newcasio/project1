class Conflict < ApplicationRecord
  belongs_to :continent, optional: true
  has_many_and_belongs_to :users
end
