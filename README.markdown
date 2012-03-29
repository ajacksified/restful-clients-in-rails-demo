RESTful Clients in Rails - the Demo
===================================

This is the sample code for the ["RESTful Clients in Rails"](http://www.meetup.com/SFRails/events/54859542/)
talk by Jack Lawson ([ajacksified](https://github.com/ajacksified)).

Tested with Ruby 1.9.3. Uses Rails 3.2.1.

Setup Notes
-----------

Note the configuration in config/initializers/hogan\_assets and
config/initializers/stache. These need to match each other so that they can
point to each other's mustache views for client delivery and rendering.

Endpoint Notes
--------------

API endpoint not included. Copy the api\_endpoints.yml.example file, whack the
.example from the end, and point at a local server that serves up super simple
JSON with a format such as the following:

    {
      "response_data": {
        "id":7,
        "start_date":"2010-05-28",
        "end_date":"2010-06-01",
        "title":"50% Off Round Pond Estate Wine Tasting and Gourmet Gift Box ",
        "sales_pitch":"<p>Let&rsquo;s face it. Of all the ways to get through the week, &nbsp;there&rsquo;s one that sticks out above the rest: Wine. So how about taking that to&nbsp;the next level with a special trip to Round Pond Estate in the highly acclaimed&nbsp;Rutherford region of Napa Valley? There, you will get a Round Pond Wine Tasting&nbsp;for two, paired with delectable gourmet appetizers made with ingredients farmed right on the estate itself. &nbsp;The tasting includes the 2007 Cabernet Sauvignon that just scored 94 points with Wine Spectator.</p>\r\n<p>The experience doesn't end once you leave the estate. You&rsquo;ll also get the Round Pond Gourmet Classic&nbsp;Gift Box, with a variety of treats including a bottle of their award winning olive oil, their syrup, their vinegar and last but certainly not least, a bottle of their 2006 Cabernet Sauvignon.&nbsp;</p>"
      }
    }

Or, better yet, play with this code, modify it to hit some other open API like
[Twitter](https://dev.twitter.com/docs/api/1/get/search) and build something.

License
-------

All code MIT licensed.
