class EventsController < ApplicationController

  def index
    @event = Event.all
  end

  def create
  @event = Event.new(event_params)
    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  private
    def event_params
      params.require(:event).permit(:title, :start,
      :end, :ongoing, :display_loaction, :description, :cost )
    end

end
