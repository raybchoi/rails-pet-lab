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
# Add a convenience route for users to GET /owners/:owner_id/appointments. Give it a prefix of owner_appointments. Route it to an appointments action in the owners controller.
    get "/owners/:id/appointments" => "owners#appointments", as: "owner_appointments"
end
