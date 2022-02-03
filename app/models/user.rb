class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :role, presence: true
end
