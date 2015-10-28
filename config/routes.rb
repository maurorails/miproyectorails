Rails.application.routes.draw do
  resources :alumno_cursos

  resources :cursos

  resources :alumnos

  devise_for :usuarios
  resources :coments

  resources :posts

  get 'inicio/index'

  root :to =>'inicio#index'
end
