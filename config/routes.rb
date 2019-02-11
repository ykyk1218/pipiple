Rails.application.routes.draw do
  devise_for :owners, controllers: {
  sessions:      'owners/sessions',
  passwords:     'owners/passwords',
  registrations: 'owners/registrations'
}
  devise_for :users, controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  get 'submits/index' => 'submits#index'

  root 'submits#index'
  resources :submits

  get 'newplan' => 'submits#new'
  post 'submits/new' => 'submits#create'

  get 'submits/search_show/' => 'submits#search_show'
  post 'submits/search_show/' => 'submits#search_show'
  get 'submits/area/:search' => 'submits#area_search'
  get 'submits/purpose/:search' => 'submits#purpose_search'
  get 'submits/mood/:search' => 'submits#mood_search'


  post "/tops/index" => "tops#index"
  get 'tops/index' => 'tops#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
