class TipSerializer
  include JSONAPI::Serializer
  attributes :uid, :location, :description, :user_id
end
