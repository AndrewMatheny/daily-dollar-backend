class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :income, :budgets
end
