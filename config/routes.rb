Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tasks#index'
  get 'tasks', to: 'tasks#index', as: :tasks
  get 'tasks/:id', to: 'tasks#show', as: :task

  get 'new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  delete 'task/:id', to: 'tasks#destroy', as: :destroy_task
end
