Rails.application.routes.draw do
  get "pages/home"
  resources :transactions, only: [:index, :create]
  root to: redirect("/index.html")
end
