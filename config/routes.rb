Rails.application.routes.draw do
  root to: "tasks#index"
  get "tasks", to: "tasks#index"
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  get "tasks/:id", to: "tasks#show", as: :task
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy"
end


# Rails.application.routes.draw do
#   resources :tasks
# end

# NB: The `show` route needs to be *after* `new` route.
