class User < ApplicationRecord
  has_many :pokemon
  has_secure_password
end
