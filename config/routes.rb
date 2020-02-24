Rails.application.routes.draw do
  resources :transactions
  resources :budgets
  get 'userbudgets/:id/', to: 'budgets#getUserBudgets', as: "userbudgets"
  get 'dailybudgets/:id/', to: 'budgets#getDailyBudgets', as: "dailybudgets"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
