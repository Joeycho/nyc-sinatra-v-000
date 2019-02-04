class LandmarksController < ApplicationController
   get '/landmarks' do
    erb :"landmarks/index"
  end
  
  get '/landmarks/new' do
    erb :"landmarks/new" 
  end
  
  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :"landmarks/show" 
  end
  
  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/edit'
  end
  
  patch '/landmarks/:id' do
    
    @landmark = Landmark.find(params[:id])
    binding.pry
    @landmark.update(params[:landmark])
    
    @landmark.save

    flash[:message] = "Successfully updated landmark."
    
    redirect("/landmarks/#{@landmark.id}")
  end
  
end
