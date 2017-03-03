class Squeal < ApplicationRecord
  belongs_to :user
  acts_as_mentioner
  acts_as_likeable

  validates :body, presence: true, length: { maximum: 160 }

  def self.timeline(user)
    following_ids = user.followees(User).pluck(:id)
    all_ids= following_ids << user.id
    Squeal.where(user_id: all_ids).order("created_at DESC")
  end

end
