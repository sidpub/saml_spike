Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#index'
  scope '/saml' do
    get '/auth' => 'saml_idp#new'
    get '/metadata' => 'saml_idp#show'
    post '/auth' => 'saml_idp#create'
    match '/logout' => 'saml_idp#logout', via: [:get, :post, :delete]
  end
end
