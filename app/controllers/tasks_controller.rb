class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new #you need a blank task to display in the form
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task) #need to redirect to the show page of the task just created
  end

  def edit
    @task = Task.find(params[:id]) #you need the actual task for the edit form
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
