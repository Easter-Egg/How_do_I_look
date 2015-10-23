class Con7Controller < ApplicationController
    def whats_your_name
    end
    
    def your_previous_life
        boss_set = ["일리단 스톰레이지", "끝판왕 베이가", "쿠퍼", "루갈", "조커", "타노스", "사우론", "디아블로", "바알", "여관주인", "라그나로스", "아이언맨"]
        
        @my_previous_life = ""
        exist = Boss.where(:name => params[:pname]).take
        if exist.nil?
            new_previous_life = Boss.new
            new_previous_life.name = params[:pname]
            new_previous_life.boss = boss_set.sample
            new_previous_life.save
        else
            @my_previous_life = exist.boss
        end
        
    end
end
