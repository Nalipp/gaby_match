class TeachersController < ApplicationController

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      flash[:success] = "Teacher profile has been created"
      redirect_to teachers_path
    else
      render :new
    end
  end

  private

    def teacher_params
      params.require(:teacher).permit(:teacher_email, :password, :name, :skill_1, :skill_2, :skill_3, :description, :price, :availability)
    end

end
