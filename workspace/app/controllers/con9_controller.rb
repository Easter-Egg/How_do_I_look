class Con9Controller < ApplicationController
    def index
        
    end
    
    def email_send
        title = params[:title]
        content = params[:content]
        _to = params[:_to]
        _cc = params[:_cc]
        SendMail.welcome_email(title, content, _to, _cc).deliver_now
        redirect_to '/'
    end
end
