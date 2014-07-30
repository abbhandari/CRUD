Rails.application.routes.draw do
  # Routes for the Idea resource:
  # CREATE
  get '/new_idea' => 'ideas#new'
  get '/create_idea' => 'ideas#create'

  # READ
  get '/ideas' => 'ideas#index'
  get '/ideas/:id' => 'ideas#show'
  # UPDATE
  get '/ideas/:id/edit' => 'ideas#edit'
  get '/ideas/:id/update' => 'ideas#update'

  # DELETE
  get '/ideas/:id/destroy' => 'ideas#destroy'
  
end
