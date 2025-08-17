Rails.application.routes.draw do
  resources :transactions, only: [:index, :create]
  root to: redirect("/index.html")
end