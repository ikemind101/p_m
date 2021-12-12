class TasksController < ApplicationController
	before_action :set_project

	def create
		@task = @project.task.create(paramst(task_params)
		redirect_to @project
	end   

	private

	def set_project
		@project = Project.find(params[:project_id])
	end  

	def task_params
		[:task].permit(:content)
	end   
end
