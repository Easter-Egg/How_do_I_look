class Con12Controller < ApplicationController
    def index
        @posts = Con12post.all
    end
    
    def send_msg
        p = Con12post.new
        p.content = params[:content]
        p.save
        
        render :text => ""
    end
    
    def like_it
        @likes = Con12like.first
    end
    
    def increaseCount
        temp = Con12like.find_by("id", params[:id]) 
        temp.count = temp.count + 1
        temp.save
        render :text => ""
    end
end
