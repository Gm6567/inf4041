class FilmsController < ApplicationController
   def index
  @films = Film.all  
  end

   def indexmovie
  @films = Film.all  
  end
 def show 
 @film = Film.find_by_slug(params[:slug])
 end

 def showen
 @film = Film.find_by_slugen(params[:slugen])
 end
def casting
 @film = Film.find_by_title(params[:title])
 end

def cast
 @film = Film.find_by_titleen(params[:titleen])
 end
end

