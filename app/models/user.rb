class User < ApplicationRecord
  has_secure_password  #for password password_digest
  has_and_belongs_to_many :conflicts
  has_many :comments

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

end
