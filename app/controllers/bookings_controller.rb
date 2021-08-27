class BookingsController < ApplicationController

    def new
        @booking = Booking.new
        @flight = Flight.find(params[:flight])
    end


    def create
        @booking = Booking.new(booking_params)

        respond_to do |format|
            if @booking.save
              format.html { redirect_to @booking, notice: "booking was successfully created." }
              format.json { render :show, status: :created, location: @booking }
            else
                format.html { redirect_to root_path,  alert: "booking failed, #{@booking.errors.full_messages.first}" , status: :unprocessable_entity }
                format.json { render json: @booking.errors, status: :unprocessable_entity }
            end
          end
    end

    def index

        @bookings = Booking.all

    end

    def booking_params
        params.require(:booking).permit(:flight_id, 
            :passengers_attributes => [:name, :email, :id])
      end

    def show
        @booking = Booking.last

    end
end
