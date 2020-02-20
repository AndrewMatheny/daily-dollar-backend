class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :date
  has_one :budget
  has_one :user
end
