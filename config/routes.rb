AjaxDemo::Application.routes.draw do
  root :to => "Users#new"

  resources :todo_lists do
    resources :todo_items, :only => [:create, :destroy]
  end
  resource :session
  resources :users
end
