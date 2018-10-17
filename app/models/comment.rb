class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :conflict, optional: true

  validates :comment, presence: true
end
