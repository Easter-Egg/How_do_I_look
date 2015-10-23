class Con4Controller < ApplicationController
    def input
    end
    
    def output
        testDB = TwitDb.new
        testDB.content = params[:article]
        testDB.save
        @output_text = TwitDb.all
    end
end
