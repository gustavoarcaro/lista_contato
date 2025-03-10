class User < ApplicationRecord
  has_secure_password
  has_many :contacts

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :name, presence: true, length: { maximum: 50 }
  validates :password, length: { minimum: 6 }, allow_nil: true
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: "inválido" },
                    uniqueness: { case_sensitive: false }
end
