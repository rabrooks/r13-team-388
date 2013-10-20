$(document).ready(function() {

    // page is now ready, initialize the calendar...

    var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();

    var calendar = $('#calendar').fullCalendar({
        eventSources: [
        {
            url: '/events/index.json', // use the `url` property
            color: 'blue',    // an option!
            textColor: 'white'  // an option!
        },
        {
            url: '/pug_events/index.json', // use the `url` property
            color: 'blue',    // an option!
            textColor: 'white'  // an option!
        }
        // any other sources...
        ],
        header: {
            left: 'prev',
            center: 'title',
            right: 'month today next'
        },
        columnFormat: {
            day: "'Click for start time or drag for time range'"
        },
        allDaySlot: false,
        selectable: true,
        selectHelper: true,

        select: function(start, end, allDay)
        {
            calendar.fullCalendar('unselect');
            if (calendar.fullCalendar('getView').name == "month") {
                calendar.fullCalendar('gotoDate',
                    start.getFullYear(),
                    start.getMonth(),
                    start.getDate()
                );
                calendar.fullCalendar('changeView', 'agendaDay');
            } else {
                alert("start:\t" + start + "\n"
                     +"end:\t\t" + end + "\n"
                     +"allDay:\t" + allDay + "\n\n"
                     +"Jump to 3rd frame of mockup here.");
            }
        },

        eventClick: function(event) {
          if (event.id) {
            var pageid= event.id,
            pageurl = 'http://until.r13.railsrumble.com//events/' . pageid;
            window.open(pageurl);
            return false;
        }
    }
    });

});
