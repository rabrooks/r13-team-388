class EventsController < ApplicationController

  def index

  end

  def create
  @event = Event.new(event_params)

  if @event.save
    redirect_to @event
  else
    render 'new'
  end

  def show

  end

  def edit
    @event = Event.new(event_params)
  end

  def update

  end

  private
    def event_params
      params.require(:event).permit(:title, :start
      :end, :ongoing, :display_loaction, :description, :cost )
    end

end
