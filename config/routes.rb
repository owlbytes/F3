F3App::Application.routes.draw do
  resources :flats

  root :to => "flats#index"


  
   
end
