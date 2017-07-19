class Follow < ApplicationRecord
  belongs_to :user
  validates_uniqueness_of :followee_id, :scope => :foller_id
end
