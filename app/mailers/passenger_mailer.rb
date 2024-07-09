class PassengerMailer < ApplicationMailer
    def confirm_email 
        @passenger = params[:passenger]

        mail(
            to: @passenger.email,
            subject: "Your Flight has been booked Successfully."
        )
    end
end
