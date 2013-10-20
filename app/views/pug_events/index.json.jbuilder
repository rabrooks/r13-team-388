json.array! @pug_event do |event|
  json.title event.title
  json.start event.date, " ", event.time
  json.end event.date, " ", event.time.at_end_of_hour()
  json.url "http://www.pugwarriors.com/games/", event.foreign_id
  json.set! :allDay, false
end
