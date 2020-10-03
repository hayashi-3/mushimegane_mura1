Rails.application.routes.draw do
  devise_for :organizers
  devise_for :participants
end
