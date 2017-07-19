class User < ApplicationRecord
  has_secure_password
  has_many :entries
  has_many :followers, class_name: 'Follow', foreign_key: :user_id
  has_many :followees, class_name: 'Follow', foreign_key: :follower_id
end
