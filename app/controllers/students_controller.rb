class StudentsController < ApplicationController
  def progress
  	student = Student.find(params[:id])
  	@student_progress = student.progress
  	result_hash = {}
  	result_hash[student.name] = @student_progress

  	render json:  result_hash
  end

  def edit
  	
  end

  def setProgress
  	content = Content.where(symbolic_name: params[:lesson])[0]
  	student = Student.find(params[:id])
  	student.setProgress content.lecture_id, content.id
  end
end
