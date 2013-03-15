class CoursesController < ApplicationController
	
   def new
  	@course =Course.new
  end
  def create
  	@course=Course.new(params[:course])
  	if @course.save
  		flash[:success]="Course Registered Successfully"
  		redirect_to @course
  	else
  		render 'new'
  	end
  end
  def show
  	@course=Course.find(params[:id])
  end
  def edit
  	@course=Course.find(params[:id])
  end
  def update
  	@course=Course.find(params[:id])
  	if @course.update_attributes(params[:course])
  		flash[:success]="Updated Course details Successfully"
  		redirect_to @course
  	else
       render 'edit'
     end
   end
   def index
   	@course=Course.all
   end
		
end
