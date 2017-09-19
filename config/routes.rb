Rails.application.routes.draw do

  root "site#index"

  resources :owners do
    # within the resrources called owner you can have a path for pets and for pets only show index, new or the create page
  resources :pets, only: [:index, :new, :create]
end
# create a new path for pets
resources :pets, only: [:show, :edit, :update, :destroy] do
  resources :appointments, only: [:new, :create]
end

end
