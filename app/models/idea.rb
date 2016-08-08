class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :likes

  validates :content, :presence => true

  def self.join_users
  	self.joins(:user).select(:id, :alias, :user_id, :content, :vote).order(:vote=> :DESC)
  end
  	
end
