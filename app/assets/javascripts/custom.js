$(document).ready(function() {

    // page is now ready, initialize the calendar...

    $('#calendar').fullCalendar({

      eventSources: [
        {
            url: '/events/index.json', // use the `url` property
            color: 'blue',    // an option!
            textColor: 'white'  // an option!
        }

        // any other sources...

      ]


    })

});