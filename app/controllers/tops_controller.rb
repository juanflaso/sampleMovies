class TopsController < ApplicationController
	def index
		@tops = Top.all
		@test = Top.order(:movie_id).group(:movie_id).count(:movie_id)
		@final = @test.sort_by{|k, v| v}.reverse 
		@toplist = []
		cnt = 0
		@final.each do |key, value|
			if cnt < 10
				pelicula = Movie.find(key)
				@toplist[cnt] = pelicula.titulo
				cnt = cnt + 1
			end

		end

	end

	def create 
      @top = Top.new(top_params) 
      @top.save 
      redirect_to @top
    end

	def show
		@top = Top.find(params[:id])
	end

	private 
      def top_params 
         params.require(:top).permit(:person, :movie) 
      end
       
end
