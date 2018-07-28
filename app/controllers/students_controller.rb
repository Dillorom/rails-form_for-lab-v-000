class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end
end
