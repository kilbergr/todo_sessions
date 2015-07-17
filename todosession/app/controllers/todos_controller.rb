class TodosController < ApplicationController
  def index
  	@todos = session[:todos] ||= []
  end

  def create
  	# if params[:task] == ""
  	# 	redirect_to todos_path, alert: "Please add a task"
  	# else
  		session[:todos] << params[:task]
  		redirect_to todos_path
  	# end
  end

  def destroy
  	session[:todos] = []
  	redirect_to todos_path
  end

  # private 
   # def todo_params
   #    params.require(:todo).permit(:title, :description)
   # end

end
