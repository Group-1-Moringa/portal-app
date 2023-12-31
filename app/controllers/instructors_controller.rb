class InstructorsController < ApplicationController
    before_action :authenticate_user!
    def index
      @instructors = Instructor.all
    end
    def show
      @instructor = Instructor.find(params[:id])
    end
    def new
      @instructor = Instructor.new
    end
    def create
      @instructor = Instructor.new(instructor_params)
      if @instructor.save
        redirect_to @instructor, notice: 'Instructor was successfully created.'
      else
        render :new
      end
    end
    def edit
      @instructor = Instructor.find(params[:id])
    end
    def update
      @instructor = Instructor.find(params[:id])
      if @instructor.update(instructor_params)
        redirect_to @instructor, notice: 'Instructor was successfully updated.'
      else
        render :edit
      end
    end
    def destroy
      @instructor = Instructor.find(params[:id])
      @instructor.destroy
      redirect_to instructors_url, notice: 'Instructor was successfully destroyed.'
    end
    private
    def instructor_params
      params.require(:instructor).permit(:name, :email, :password)
    end
  end