class RepresentativeStudentsController < ApplicationController
  before_filter :get_student, :except => [:destroy]
  before_filter :get_representative_student, :only => [:destroy]
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
    @representative_student.delete()
    redirect_to student_path(@representative_student.student), :notice => "Representante eliminado"
  end

  def get_student
    @student = Student.find(params[:student_id])
  end
  def get_representative_student
    @representative_student = RepresentativeStudent.find(params[:id])
  end
end
