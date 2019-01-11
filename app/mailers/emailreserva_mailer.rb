class EmailreservaMailer < ApplicationMailer
    def email_reserva(reser)
        @reser = reser
        mail(to: 'forimek@2mailnext.top', subject: 'contato recebido')
    end
end