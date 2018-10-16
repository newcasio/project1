class Conflict < ApplicationRecord
  belongs_to :continent, optional: true
  has_and_belongs_to_many :users
  has_many :comments


end
