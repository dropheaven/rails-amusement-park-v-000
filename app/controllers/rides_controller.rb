class RidesController < ApplicationController
  def create
    attraction = Attraction.find(ride_params[:id])
    @ride = Ride.create()
    @ride.attraction = attraction
    @ride.user = current_user

    message = @ride.take_ride
    if message.instance_of? String
      flash[:notice] = message
      redirect_to user_path(current_user)
    else
      flash[:notice] = "Thanks for riding the #{attraction.name}!"
      redirect_to user_path(current_user)
    end
  end

  private

  def ride_params
    params.permit(:id)
  end

end
