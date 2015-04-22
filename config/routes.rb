Rails.application.routes.draw do
  resources :emergencies, defaults: { format: 'json' } do
  end

  resources :responders, defaults: { format: 'json' } do
  end
end
