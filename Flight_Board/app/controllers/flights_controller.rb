class FlightsController < ApplicationController
  before_action :set_flight, only: [:show, :edit, :update, :destroy]

  def index
    @flights = Flight.all
  end

  def show
  end

  def new
    @flight_route = FlightRoute.find(params[:flight_route_id])
    @flight = @flight_route.flights.new
  end

  def create

    @flight_route = FlightRoute.find(params[:flight_route_id])
    @flight = @flight_route.flights.new(flight_params)
    binding.pry

    if @flight.save
      redirect_to flight_routes_path, notice: "Flight has been created."
    else
      render "new"
    end
  end


  private

  def flight_params
    params.require(:flight).permit(:name, :flight_routes_id, :number_of_passengers, :arrived, :stocked, :clean)
  end

  def set_flight
    @flight = Flight.find(params[:id])
  end
end
