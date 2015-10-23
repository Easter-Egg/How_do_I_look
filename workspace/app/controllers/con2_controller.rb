class Con2Controller < ApplicationController
    def act1
        @sayHello = "Hello Rails!"
        @array = (1..45).to_a.sample(6).sort
        @alpha = ((1..45).to_a - @array).sample(1)
    end
    
    def act2
   
    end
    
    def act3
        @name = params[:pname]
        @first = ["머리가 좋은", "야한", "멍청한", "앞만 보고 달리는", "4차원", "단순한", "그냥", "돈이 많은", "유명한", "나 밖에 모르는"].sample(1)
        @second = ["폭군", "일반인", "동네 바보", "거지", "졸부", "성인군자", "야생마", "공주", "왕자", "영웅", "파계승", ].sample(1)
    end

end
