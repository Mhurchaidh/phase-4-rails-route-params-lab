class StudentsController < ApplicationController

  def index
    students = params[:name] ? Student.all.where('first_name LIKE ? OR last_name LIKE ?', "%" + params[:name], "%" + params[:name]) : Student.all
    render json: students
    
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
