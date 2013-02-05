class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id],:include => [:medicines])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update_attributes(params[:student])
    redirect_to student_path
  end

  def new
    @student = Student.new
  end

  def create
    @student =  Student.new(params[:student])
    if (@student.save())
      redirect_to student_path(@student)
    else
      render :new, :error => "No se pudo realizar el ingreso"
    end
  end
end
