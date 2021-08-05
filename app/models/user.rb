class User < ApplicationRecord
  validates :first_name,
    presence: true
  
  validates :last_name,
    presence: true

  validates :description,
    presence: true,
    length: { minimum: 5 }
  
  validates :email, 
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }

  validates :age, 
    presence: true
  
  validates :password_digest, 
    presence: true,
    length: { minimum: 6 }

  has_secure_password
  belongs_to :city, optional: true
  has_many :gossips
end
