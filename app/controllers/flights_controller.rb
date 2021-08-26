class FlightsController < ApplicationController


    def index
        @flights = Flight.all
        @airport_options= Airport.all.map{ |e| [ e.name, e.id ]}
        @available_dates = Flight.all.collect{ |flight| flight.flight_date}.sort.uniq
    end
end
