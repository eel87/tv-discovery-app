# README

Problem: 
Create a full-stack "tv discovery app" that communicates with The Movie Database API for data.  The app must render a list of popular shows on the home page, be capable of searching for shows and returning details of specific shows.
---
Solution:
Using Ruby on Rails, I used MVC architecture to build my app.
I created a model `TmdbService` to communicate with the Movie Database API. I installed `themoviedb` ruby gem to allow for cleaner and simpler code in the model. The `TmbdService` model serves to get data from the API and communicate with controllers.
Upon rendering the welcome/index page, the welcome_controller communicates with the welcome/index view to render a list of popular shows.  The `def index` does so by requesting the list of shows from `TmdbService` using the method `get_popular_shows`.
Similarly, the `shows_controller`'s `index` method gets search results based on the show name entered in the view. Using the method `search` with TmdbService, search results are rendered in the view `show/index`. The `show` method, displays details of the selected show by using the method `get_details` on `TmdbService` and the view renders these details at `shows/id`.


Reasoning behind your technical choices. This may include trade-offs you might have made, anything you left out, and what you might do differently if you had more time to spend on the project.
---
I chose to use Ruby on Rails for my project because I am familiar with it, and have the most experience running tests with RSpec.  I also wanted to build the app using the MVC architecture and again, I have the most experience with this using Rails. I used Bootstrap for styling my page for ease of mobile friendliness.

If I had more time, I would have included full accessibility to screen readers using WAI-ARIA. This is something that is very important to me and unfortunately didn't have time to implement fully. I also would've implemented tests for the Views pages in my app. I began the process but ultimately didn't have enough time to implement what was necessary. I also would've included a button to return to the home page from the `shows/id` details page.
