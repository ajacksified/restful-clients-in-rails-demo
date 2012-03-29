PdApiClientWww::Application.routes.draw do
  match '/offers' => 'offers#index', :via => [:get]
  match '/offers/:id' => 'offers#show', :via => [:get]
end
