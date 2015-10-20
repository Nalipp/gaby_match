Rails.application.routes.draw do
  #resources :teachers

  root               'pages#home'
  get  'teachers' => 'teachers#index'
  get  'points'   => 'points#index'
end
