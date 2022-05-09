class GradesController < ApplicationController
  def index
    @grade = Grade.find(params[:g_id])
    @students = @grade.students
  end
end
