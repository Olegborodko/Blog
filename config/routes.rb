R22::Application.routes.draw do
root "user#index"

match 'new',    to: 'user#new',    via: :all
match 'create', to: 'user#create', via: :all
match 'session/new', to: 'session#new', via: :all
match 'session/destroy', to: 'session#destroy', via: :all
match 'publish/new', to: 'publishes#new', via: :all
match 'publish/create', to: 'publishes#create', via: :all
get 'show', to: 'user#show'


resources :publishes do
resources :coms #in
end 

end
