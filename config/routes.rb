Rails.application.routes.draw do
  # A user can create a new list
  resources :lists, only: %i[index show new create]
  resources :bookmarks
end
