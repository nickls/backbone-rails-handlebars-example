class TasksController < ApplicationController

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all

    respond_to do |format|
      format.html # index.html.haml
      format.json {
        headers["Cache-Control"] = "no-cache"
        render json: @tasks }
    end
  end

end
