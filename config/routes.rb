PizzaCrusts::Application.routes.draw do
  resources :pizzas

  root :to => 'pizzas#index'
end
