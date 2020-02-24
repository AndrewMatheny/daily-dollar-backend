Rails.application.routes.draw do
  resources :transactions
  resources :budgets
  get 'userbudgets/:id/', to: 'budgets#getUserBudgets', as: "userbudgets"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
