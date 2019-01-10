class EmailreservaMailer < ApplicationMailer
    def email_reserva(reser)
        @reser = reser
        mail(to: 'angelolimadias@gmail.com', subject: 'contato recebido')
    end
end