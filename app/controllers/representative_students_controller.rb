class RepresentativeStudentsController < ApplicationController
  before_filter :get_student
  def new
    @representative_student = RepresentativeStudent.new
  end
  def create
    @student.representative_students.create(params[:representative_student])
    redirect_to student_path(@student)
  end

  def update
  end

  def destroy
  end
  def get_student
    @student = Student.find(params[:student_id])
  end
end
