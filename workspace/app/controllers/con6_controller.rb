require "nokogiri"

class Con6Controller < ApplicationController
    def nokogirii
        @arr = Array.new
        @num = 0
        @i = 0
        while @num != 10
            uri = URI("http://www.melon.com/chart/index.htm")
            html_doc = Nokogiri::HTML(Net::HTTP.get(uri))
            @arr[@num] = html_doc.css("tr.lst50//div.wrap//div.rank01//span//strong")[@num].inner_text + " - " + html_doc.css("tr.lst50//div.wrap//div.rank02//a//span")[@num*2].inner_text
            @num = @num + 1
        end
    end
end
