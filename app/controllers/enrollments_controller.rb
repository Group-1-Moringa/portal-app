class EnrollmentsController < ApplicationController
    def index
      @enrollments = Enrollment.all
    end
    def show
      @enrollment = Enrollment.find(params[:id])
    end
    def new
      @enrollment = Enrollment.new
    end
    def create
      @enrollment = Enrollment.new(enrollment_params)
      if @enrollment.save
        redirect_to @enrollment, notice: 'Enrollment was successfully created.'
      else
        render :new
      end
    end
    def edit
      @enrollment = Enrollment.find(params[:id])
    end
    def update
      @enrollment = Enrollment.find(params[:id])
      if @enrollment.update(enrollment_params)
        redirect_to @enrollment, notice: 'Enrollment was successfully updated.'
      else
        render :edit
      end
    end
    def destroy
      @enrollment = Enrollment.find(params[:id])
      @enrollment.destroy
      redirect_to enrollments_url, notice: 'Enrollment was successfully destroyed.'
    end
    private
    def enrollment_params
      params.require(:enrollment).permit(:student_id, :course_id)
    end
  end