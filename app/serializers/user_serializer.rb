class UserSerializer < ActiveModel::Serializer
  attributes :id, :indiv, :name, :email, :income, :budgets
end
