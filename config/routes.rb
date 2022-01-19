Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
      post "run_scripts" => "run_scripts#run"
  end
end
