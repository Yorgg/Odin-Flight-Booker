Rails.application.routes.draw do
   root 'flights#index'
   get 'search' => 'flights#index'
   resources :flights

end
