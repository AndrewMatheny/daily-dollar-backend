class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :limit, :daily, :transactions
  has_one :user
end
