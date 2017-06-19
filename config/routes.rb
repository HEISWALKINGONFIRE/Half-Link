Rails.application.routes.draw do
  root "urls#index"
  resources :urls
  get '/show' =>'urls#show'

#   get'/:shorten_url' => 'urls#shorten'
# get'/:long_url' => 'urls#shorten'
  # get'/create'=>'url#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
