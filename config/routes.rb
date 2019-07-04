Rails.application.routes.draw do
    root 'pages#home'
    
    get 'brands' => 'brands#index'
    get 'brands/:id' => 'brands#show'
    get '/brands/:id/update' => "brands#change"
    post 'brands' => 'brands#create'
    patch 'brands/:id' => 'brands#update'
    delete 'brands/:id' => 'brands#delete'
    
    get 'admin' => 'pages#admin'
end
