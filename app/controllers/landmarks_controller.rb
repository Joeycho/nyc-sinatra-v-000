class LandmarksController < ApplicationController
   get '/figures' do
    erb :"figures/index"
  end
  
  get '/landmarks/new' do
    erb :"landmarks/new" 
  end
  
  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :"landmarks/show" 
  end
  
  get '/figures/:id/edit' do
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/edit'
  end
  
  patch '/landmarks/:id' do
    
    @landmark = Landmark.find(params[:id])
    @landmark.update(params[:landmark])
    
    @figure.save

    flash[:message] = "Successfully updated landmark."
    
    redirect("/landmarks/#{@landmark.id}")
  end
  
end
