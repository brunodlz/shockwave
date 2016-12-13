class User < ApplicationRecord

  attr_accessor :bio, :email, :full_name, :location, :password

  validates :full_name, :location, :password, presence: true
  validates :password, confirmation: true
  validates :bio, presence: true, allow_blank: false, length: { minimum: 30 }
  validates :email, presence: true,
                    format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ },
                    uniqueness: true

end
