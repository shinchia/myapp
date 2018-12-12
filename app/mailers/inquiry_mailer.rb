class InquiryMailer < ApplicationMailer
  def inquiry_email(inquiry)
    @inquiry = inquiry
    mail(to: 'to@example.com', subject: '新規お問い合わせがあります')
  end
end
