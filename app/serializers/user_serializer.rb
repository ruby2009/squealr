class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :token, :avatar
end
