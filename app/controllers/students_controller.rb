class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update, :destroy]
  
    def index
      @students = Student.includes(:course, :instructor)
    end
  
    def show
    end
  
    def new
      @student = Student.new
    end
  
    def create
      @student = Student.new(student_params)
      if @student.save
        redirect_to @student, notice: 'Student was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @student.update(student_params)
        redirect_to @student, notice: 'Student was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @student.destroy
      redirect_to students_url, notice: 'Student was successfully destroyed.'
    end
  
    private
  
    def set_student
      @student = Student.includes(:course, :instructor).find(params[:id])
    end
  
    def student_params
      params.require(:student).permit(:name, :grades, :course_id, :instructor_id)
    end
  end
  