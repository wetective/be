class TipSerializer
  include JSONAPI::Serializer
  attributes :uid, :location, :date, :time, :description, :user_id
end
