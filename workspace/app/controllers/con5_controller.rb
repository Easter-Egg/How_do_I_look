class Con5Controller < ApplicationController
    def read
        @posts = Post.all
    end 

    def write
        post = Post.new
        post.pname = params[:pname]
        post.pwd = Digest::SHA256.hexdigest params[:password]
        post.content =  params[:content]
        post.my_image = params[:my_image]
        post.save
        redirect_to "/con5/read"
    end
    
    def delete
        deletePost = Post.find(params[:id])
        @pwd = Digest::SHA256.hexdigest params[:password]
        @postPwd = deletePost.pwd
        
        if (@pwd == @postPwd)
            deletePost.destroy
            redirect_to "/con5/read"
            
        else
            redirect_to "/con5/deleteFailed"
        end
    end
    
    def check
        checkPost = Post.find(params[:id])
        @postID = params[:id]
        @pname = checkPost.pname
        @content = checkPost.content
    end
    
    def modify
        @checkPost = Post.find(params[:id])
        
    end
    
    def update
        checkPost = Post.find(params[:id])
        checkPost.pname = params[:new_pname]
        checkPost.content = params[:new_content]
        checkPost.save
        
        redirect_to "/con5/read"
    end
    
    def reply
        my_reply = Reply.new
        my_reply.post_id = params[:post_id]
        my_reply.content = params[:myreply]
        my_reply.save
        
        redirect_to "/"
    end
    
end
