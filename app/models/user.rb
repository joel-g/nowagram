class User < ApplicationRecord
  has_secure_password
  has_many :entries
  has_many :followers, class_name: 'User', foreign_key: follower_id
  has_many :followees, class_name: 'User', foreign_key: followee_id
end
