class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :name, :limit, :daily
  has_one :user
end
