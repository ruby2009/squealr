class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :following

  def following
      current_user.follows?(object) if current_user
  end
end
