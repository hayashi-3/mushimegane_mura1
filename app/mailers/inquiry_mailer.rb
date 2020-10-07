class InquiryMailer < ApplicationMailer
    def received_email(participant)
      @participant = participant
      mail to: @participant.email,
      subject: "【#{participant.nickname}様　ZoomイベントURLを送付致します】"
    end
end
