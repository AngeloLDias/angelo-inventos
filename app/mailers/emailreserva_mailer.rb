class EmailreservaMailer < ApplicationMailer
    def email_reserva(reser)
        @reser = reser
        mail(to: 'raquel@inventosdigitais.com.br', subject: 'contato recebido')
    end
end