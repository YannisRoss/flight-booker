class BookingsController < ApplicationController

    def new
        @booking = Booking.new

    end


    def create
        @booking = Booking.new


    end

    def index

        @bookings = Booking.all

    end
end
