

class StudentsController < ApplicationController

  def index
    # binding.pry
    if (params[:first_name]).present?
      first_name = Student.find_by(first_name: params[:first_name])
      render json: first_name
    elsif (params[:last_name]).present?
      last_name = Student.find_by(last_name: params[:last_name])
      render json: last_name
    else
      students = Student.all
      render json: students
    end
  end


  def show
    student = Student.find(params[:id])
    render json: student
  end


end
