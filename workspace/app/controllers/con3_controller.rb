class Con3Controller < ApplicationController
   def input
   end
   
   def output
      @matching = Hash.new
      @matching["김태우"] = "곰"
      @matching["이상훈"] = "바퀴벌레"
      @matching["김병수"] = "뱅스"
      @previous_life = @matching[params[:pname]]
   end

end
