class SightingsController < ApplicationController
 
  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings)
  end 
  
  # def show
  #   sighting = Sighting.find(params[:id])
  #   options = {
  #     include: [:bird, :location]
  #   render json: SightingSerializer.new(sighting)
  # end

  def show
    sighting = Sighting.find_by(id: params[:id])
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sighting, options)
 #pass in a second options parameter to the serializer indicating that we want to include those objects
  end 

end
