class Con8Controller < ApplicationController
  def index
    
   # mark = ViewCount.new
    #mark.ip_address = request.remote_ip
    #mark.save
    
   # ip_address_set = Array.new
   # ViewCount.all.each do |x|
   #   ip_address_set << x.ip_address
   # end
    
   # @total_view_count = ip_address_set.uniq.count
    
    @username =""
    unless session["user_id"].nil?
      @username = User.find(session["user_id"]).username
    end
  end

  def login
  end

  def logout
    reset_session
    redirect_to '/'
  end
  
  def join_process
    u = User.new
    u.username = params[:username]
    u.password = Digest::SHA256.hexdigest params[:password]
    u.save
    
    redirect_to '/con8/index.html'
  end
  
  def login_process
    userPassword = Digest::SHA256.hexdigest params[:password]
    u = User.where(:username => params[:username],
                    :password => userPassword).take
    
    unless u.nil?
      session["user_id"] = u.id
    end
  
  redirect_to '/con8/index.html'
  
  end
end
