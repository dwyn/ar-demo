Rails.application.routes.draw do
  
  # get '/home', to: 'welcome#home'

  # resources :genres
  resources :songs#, except: [:new]

  resources :genres, only: [:show] do
    resources :songs, only: [:new]
  end

  # genres/1/songs/1
  # genres/1/songs/new
  # genres/1/songs

  # resources :artists do
  #   resources :songs
  # end
  # resources :artists do
  #   resources :genres
  # end

  # POST
  # GET
  # PUT
  # PATCH
  # DELETE

end