Rails.application.routes.draw do
  resources :contacts, only: %i[index show new create update] do
    collection do
      get :export
    end
  end
  get '/oauth', to: 'oauth/authorization#authorize'
  get '/oauth/callback', to: 'oauth/authorization#callback'
  root to: 'contacts#index'
end
