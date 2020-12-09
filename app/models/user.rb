class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :age, presence: true
  validates :name, presence: true
end
