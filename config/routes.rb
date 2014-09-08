Rails.application.routes.draw do

  root :to => 'questions#index'

  resources :users, :questions, :votes, :responses, :sessions

end


#        Prefix Verb   URI Pattern                   Controller#Action
#          root GET    /                             questions#index
#         users GET    /users(.:format)              users#index
#               POST   /users(.:format)              users#create
#      new_user GET    /users/new(.:format)          users#new
#     edit_user GET    /users/:id/edit(.:format)     users#edit
#          user GET    /users/:id(.:format)          users#show
#               PATCH  /users/:id(.:format)          users#update
#               PUT    /users/:id(.:format)          users#update
#               DELETE /users/:id(.:format)          users#destroy
#     questions GET    /questions(.:format)          questions#index
#               POST   /questions(.:format)          questions#create
#  new_question GET    /questions/new(.:format)      questions#new
# edit_question GET    /questions/:id/edit(.:format) questions#edit
#      question GET    /questions/:id(.:format)      questions#show
#               PATCH  /questions/:id(.:format)      questions#update
#               PUT    /questions/:id(.:format)      questions#update
#               DELETE /questions/:id(.:format)      questions#destroy
#         votes GET    /votes(.:format)              votes#index
#               POST   /votes(.:format)              votes#create
#      new_vote GET    /votes/new(.:format)          votes#new
#     edit_vote GET    /votes/:id/edit(.:format)     votes#edit
#          vote GET    /votes/:id(.:format)          votes#show
#               PATCH  /votes/:id(.:format)          votes#update
#               PUT    /votes/:id(.:format)          votes#update
#               DELETE /votes/:id(.:format)          votes#destroy
#     responses GET    /responses(.:format)          responses#index
#               POST   /responses(.:format)          responses#create
#  new_response GET    /responses/new(.:format)      responses#new
# edit_response GET    /responses/:id/edit(.:format) responses#edit
#      response GET    /responses/:id(.:format)      responses#show
#               PATCH  /responses/:id(.:format)      responses#update
#               PUT    /responses/:id(.:format)      responses#update
#               DELETE /responses/:id(.:format)      responses#destroy
#      sessions GET    /sessions(.:format)           sessions#index
#               POST   /sessions(.:format)           sessions#create
#   new_session GET    /sessions/new(.:format)       sessions#new
#  edit_session GET    /sessions/:id/edit(.:format)  sessions#edit
#       session GET    /sessions/:id(.:format)       sessions#show
#               PATCH  /sessions/:id(.:format)       sessions#update
#               PUT    /sessions/:id(.:format)       sessions#update
#               DELETE /sessions/:id(.:format)       sessions#destroy
