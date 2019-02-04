class LandmarksController < ApplicationController
   get '/figures' do
    erb :"figures/index"
  end
  
  get '/landmarks/new' do
    erb :"landmarks/new" 
  end
end
