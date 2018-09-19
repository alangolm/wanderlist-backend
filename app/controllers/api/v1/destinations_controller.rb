class Api::V1::DestinationsController < ApplicationController
  before_action :find_destination, only: [:show, :update, :destroy]

  def index
    @destinations = Destination.all
    render json: @destinations
  end

  def show
    render json: @task
  end

  def create
    @destination = Destination.new(destination_params)
    if @destination.save
      render json: @destination
    end
  end

  def update
    @destination.update(destination_params)
    if @destination.save
      render json: @destination, status: :accepted
    else
      render json: { errors: @destination.errors.full_messages }, status: :unprocessible_entity
    end  
  end

  def destroy
    @destination.destroy
  end

  private

  def find_destination
    @destination = Destination.find(params[:id])
  end

  def destination_params
    params.require(:destination).permit(:title, :description, :date, :user_id, :latitude, :longitude, :city, :country)
  end

end
