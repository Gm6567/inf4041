Rails.application.routes.draw do
  

  namespace :admin do
resources :castings
resources :episodes
resources :fellows
resources :films

    root to: "castings#index"
  end

   get '/' => 'pages#accueil'
 
   get '/en' => 'pages#home' #version anglaise de la page d'accueil
   
   get '/films' => 'films#index'

   get '/filmsen' => 'films#indexmovie' #version anglaise de la page films

   get 'films/:slug'=> 'films#show'

   get 'filmsen/:slugen'=> 'films#showen' #version anglaise de page "voir la bande annonce du film"
 
   get '/about' => 'pages#about'

   get '/abouten' => 'pages#abouten' # version anglaise de la page about

   get 'casting/:title'=> 'films#casting'

   get 'cast/:titleen'=> 'films#cast' #version anglaise de la page casting
   
   get '/fellows'=> 'fellows#findex'
   
   get '/fellowsen'=> 'fellows#findexen' #version anglaise de la page Généalogie


end
