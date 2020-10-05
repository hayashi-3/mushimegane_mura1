class Organizers::EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
   if @event.save
    redirect_to organizers_event_path(@event.id)
   else
    redirect_back(fallback_location: root_path)
   end
  end
  
  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if@event.update(event_params)
        redirect_to organizers_event_path(@event.id)
    else
        redirect_back(fallback_location: root_path)
    end
  end

  private
  def event_params
    params.require(:event).permit(:participant_id, :date_and_time, :event_name, :image, :is_active, :content)
  end

end
