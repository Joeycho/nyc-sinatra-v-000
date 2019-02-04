class LandmarksController < ApplicationController
   get '/figures' do
    erb :"figures/index"
  end
  
  get '/landmarks/new' do
    erb :"landmarks/new" 
  end
  
  get '/landmarks/:id' do
    erb :"landmarks/show" 
  end
end
