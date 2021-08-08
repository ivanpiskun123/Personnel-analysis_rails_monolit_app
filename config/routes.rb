Rails.application.routes.draw do

  devise_for :users

  ActiveAdmin.routes(self)

  root 'home#home'

  resources :positions
  resources :criteria
  resources :candidates
  resources :vacancies
  resources :position_criterium_scores
  resources :candidate_criterium_scores

  get "home/home"

end
