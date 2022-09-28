class TipSerializer
  include JSONAPI::Serializer
  attributes :uid, :location, :description, :user_id, :date, :created_at, :updated_at
end
