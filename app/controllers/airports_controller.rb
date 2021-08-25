class AirportsController < ApplicationController


    def new
        @airport = Airport.new
    end

    def create
        @airport = Airport.new

        respond_to do |format|
            if @airport.save
              format.html { redirect_to @airport, notice: "airport was successfully created." }
              format.json { render :show, status: :created, location: @airport }
            else
              format.html { render :new, status: :unprocessable_entity }
              format.json { render json: @airport.errors, status: :unprocessable_entity }
            end
        end
    end

    def index
        @airports = Airport.all
    end


    def show
        @airport = Airport.find(params[:id])
    end
end
