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

  def destroy_all
  	session[:todos] = []
  	redirect_to todos_path
  end

  def destroy_one

 	session[:todos].delete(params[:task])
 	redirect_to todos_path

  end

  private 
   def find_one
      @todo = session[:todos].last
   end

end
