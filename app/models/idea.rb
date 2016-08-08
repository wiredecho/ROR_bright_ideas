class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :likes, :dependent => :destroy

  validates :content, :presence => true

  def self.join_users
  	self.joins(:user).select(:id, :alias, :user_id, :content, :vote).order(:vote=> :DESC)
  end
  	
end
