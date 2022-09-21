class UserSerializer
  include JSONAPI::Serializer
  attributes :email, :first_name
end