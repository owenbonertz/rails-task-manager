class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @tasky = Task.new
  end

  def show
    @taskito = Task.find(params[:id])
  end

  def create
    @cosa = Task.new(task_prams)
    @cosa.save
    redirect_to tasks_path(@cosa)
  end

  def edit
    @taskerov = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_prams)
    redirect_to tasks_path(@task)
  end

  private

  def task_prams
    params.require(:task).permit(:title, :details)
  end

end
