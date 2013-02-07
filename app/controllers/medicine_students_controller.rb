class MedicineStudentsController < ApplicationController  
  before_filter :get_student, :except => [:destroy]
  before_filter :get_medicine_student, :only => [:destroy]
  def new
    @medicine_student = MedicineStudent.new
  end

  def create
    @student.medicine_students.create(params[:medicine_student])
    redirect_to(student_path(@student))
  end

  def edit
  end

  def update
  end

  def destroy
    @medicine_student.delete()
    redirect_to student_path(@medicine_student.student), :notice => "Representante eliminado"
  end

  def get_student
    @student = Student.find(params[:student_id])
  end
    def get_medicine_student
    @medicine_student = MedicineStudent.find(params[:id])
  end


end
