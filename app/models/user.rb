class User < ApplicationRecord
  has_secure_password
  has_many :entries
  has_many :followers, class_name: 'Follow', foreign_key: :user_id
  has_many :followees, class_name: 'Follow', foreign_key: :follower_id

  def following
    list = []
    self.followees.each do |record|
      list << User.find(record.user_id)
    end
    list
  end

  def follows?(user)
    self.following.include?(user)   
  end


end
