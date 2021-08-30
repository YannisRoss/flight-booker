class PassengerMailer < ApplicationMailer
    default from: 'booking@flight-booker.com'

    def thanks_email
        @passenger = params[:passenger]
        @url = 'http://flight-booker.com/flights'
        mail(to: @passenger.email, subject: 'Your flight-booker booking')

    end
end
