class TokenUserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :api_key, :role

  attribute :owner_id do |object|
    object.owner ? object.owner.id : nil
  end
end