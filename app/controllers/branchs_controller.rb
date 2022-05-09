class BranchsController < ApplicationController
  def index
    @branch = Branch.find(params[:b_id])
    @students = @branch.students
  end
end
