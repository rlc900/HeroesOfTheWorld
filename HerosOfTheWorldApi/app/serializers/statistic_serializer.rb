class StatisticSerializer < ActiveModel::Serializer
  attributes :id, :role, :health, :affiliation
end
