class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :name, :limit, :daily, :transactions
  has_one :user
end
