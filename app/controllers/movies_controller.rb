class MoviesController < ApplicationController

	def create 
      @movie = Movie.new(movie_params) 
      @movie.save 
      redirect_to @movie
    end

	def show
		@movie = Movie.find(params[:id])
	end

	private 
      def movie_params 
         params.require(:movie).permit(:titulo, :director, :reparto, :plan, :calificacion) 
      end

end
