class Api::V1::EventsController < ApplicationController
  before_action :find_event, only: [:show, :update, :destroy]

  def index
    @events = Event.all
    render json: @event
  end

  def show
    render json: @event
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      render json: @event
    end
  end

  def update
    @event.update(event_params)
    if @event.save
      render json: @event, status: :accepted
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
    end 
  end

  def destroy
    @event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:description, :date, :destination_id)
  end

  def find_event
    @event = Event.find(params[:id])
  end

end
