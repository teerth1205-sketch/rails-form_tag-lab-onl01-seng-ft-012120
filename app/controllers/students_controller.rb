class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def new
    
  end 
  
  def create
    Student.create(:first_name => params["firstname"], :last_name => params["lastname"])
    redirect students_path
  end 
  
end
