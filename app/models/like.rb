class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :idea

  validates :content, presence: true
end
