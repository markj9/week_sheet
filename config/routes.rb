Rails.application.routes.draw do
  resources :timesheets, only: [] do
    get :for_user, :on => :collection
  end
end
