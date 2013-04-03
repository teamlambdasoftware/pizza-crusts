PizzaCrusts::Application.routes.draw do
  resources :pizzas do
    member do
      get :deliver
    end
  end

  root :to => 'pizzas#index'
end
