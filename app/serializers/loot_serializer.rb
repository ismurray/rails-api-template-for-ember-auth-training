class LootSerializer < ActiveModel::Serializer
  attributes :id, :name, :value, :user_id
end
