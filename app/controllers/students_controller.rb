class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def create 
    @student = Student.create()
  end
end
