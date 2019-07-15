Rails.application.routes.draw do
    root 'pages#home'
    
    get 'brands' => 'brands#index'
    get 'brands/:id' => 'brands#show'
    get 'brands/:id/update' => "brands#change"
    post 'brands' => 'brands#create'
    patch 'brands/:id' => 'brands#update'
    delete 'brands/:id' => 'brands#delete'
    
    get 'persons' => 'persons#index'
    get 'persons/:id' => 'persons#show'
    get 'persons/:id/update' => "persons#change"
    post 'persons' => 'persons#create'
    patch 'persons/:id' => 'persons#update'
    delete 'persons/:id' => 'persons#delete'
    
    get 'members' => 'members#index'
    get 'members/:id' => 'members#show'
    get 'members/:id/update' => "members#change"
    post 'members' => 'members#create'
    patch 'members/:id' => 'members#update'
    delete 'members/:id' => 'members#delete'
    
    post 'notes/:id' => 'notes#create'
    delete 'notes/:id' => 'notes#delete'
    
    get 'admin' => 'pages#admin'
end
