PhotoCywoniuk::Application.routes.draw do
  root :to => "galleries#index"
  devise_for :users

  namespace :admin do
    resources :galleries, :only => [:index, :new, :show, :edit, :destroy, :create, :update]
    root :to => "galleries#index"
  end
  
  resources :galleries, :only => [:index, :show]
  match 'about' => 'static_pages#about', :as => :about_page
  match 'contact' => 'static_pages#contact', :as => :contact_page
end
