Rails.application.routes.draw do
  root 'posts#index'
  resources :posts

  delete 'attachments/destroy' => 'attachments#destroy' 
  resources :attachments, only: [:index, :create, :destroy] do 
    collection do 
      post :upload 
    end 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  
end
