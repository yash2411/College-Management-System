class StudentsController < ApplicationController
  def index
    @students = Student.all
    @student = Student.new

  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "Data Entered Successfully"
      redirect_to root_path
    else
      flash[:danger] = "Invalid Data"
      redirect_to root_path
    end

  end

  def destroy
    @student = Student.find(params[:id])
    flash[:success] = "Data Deleted Successfully"
    @student.destroy
    respond_to do |format|
      format.html {redirect_to root_path}
      format.js 
    end
  end 

  private
  def student_params
    params.require(:student).permit(:name, :email, :city, :branch_id, :grade_id, :cgpa)
  end

end
