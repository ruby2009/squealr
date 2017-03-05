class User < ApplicationRecord

  has_secure_password
  has_secure_token

  acts_as_followable
  acts_as_follower

  acts_as_liker
  acts_as_mentionable

  has_many :squeals

  validates :username, presence: true, uniqueness: true

  # def followees
  #
  # end

end
