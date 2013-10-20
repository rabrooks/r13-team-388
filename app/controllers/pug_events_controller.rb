class PugEventsController < ApplicationController
  require 'open-uri'
  require 'json'

  def index
    events = open("http://www.pugwarriors.com/games.json").read
    @events = JSON.parse(events)
    @pug_events = []
    @events.each do |event|
      # TODO use the index.json.jbuilder here instead
      #pug = PugEvent.new
      #pug.foreign_id = event['_id']
      pug = {}
      pug["foreign_id"] = event['_id']
      time = Time.parse(event['time']).to_s(:time) rescue ""
      pug["start"] = event['date'] + " " + time
      end_time = Time.parse(event['time']).at_end_of_hour.to_s(:time) rescue ""
      pug["end"] = event['date'] + " " + end_time
      pug["title"] = event['name']
      pug["description"] = event['tweet_text']
      pug['allDay'] = false
      @pug_events.push(pug)
    end
    respond_to do |format|
      format.json { render json: @pug_events }
    end
  end
end
