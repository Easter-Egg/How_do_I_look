class SendMail < ApplicationMailer
    def welcome_email added_1_title, added_2_content, _to, _cc
        mail from: 'tu_k@naver.com',
        to: _to,
        cc: _cc,
        subject: added_1_title,
        body: added_2_content
    end
end
