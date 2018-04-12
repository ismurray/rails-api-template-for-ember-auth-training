class LootSerializer < ActiveModel::Serializer
  attributes :id, :name, :value, :user_id
  belongs_to :user
end
