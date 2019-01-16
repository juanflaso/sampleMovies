class VistaTestController < ApplicationController
   def new 
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
