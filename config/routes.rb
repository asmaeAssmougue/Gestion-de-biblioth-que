Rails.application.routes.draw do
  resources :materiels
 
  devise_for :admins 
  resources :livres
  resources :adherents
  devise_scope :admin do   
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end

 get 'home/index'

 get '/chercher', to: "livres#chercher"
 root 'home#index'
 get '/chercher', to: "adherents#chercher"
 
end
