class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :following

  def following
      current_user.follows?(object) if current_user
  end

  def avatar
    "https://cdn3.iconfinder.com/data/icons/rcons-user-action/32/girl-512.png"
  end
end
