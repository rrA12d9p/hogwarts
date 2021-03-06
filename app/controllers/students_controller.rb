class StudentsController < ApplicationController

  def index
		@students = Student.order(:name)
  end

  def show
		@student = Student.find(params[:id])
  end

  def new
  	@student = Student.new
  end

  def create
  	student = Student.new(student_params)

  	if student.save
    	redirect_to student
    else
    	render :new
    end
  end

  def student_params
    params.require(:student).permit(:name, :img_url, :avatar)
  end

end