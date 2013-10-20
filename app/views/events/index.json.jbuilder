json.array! @event do |event|
  json.title event.title
  json.description event.description
  json.start event.start
  json.end event.end
  json.set! :allDay, false
end
