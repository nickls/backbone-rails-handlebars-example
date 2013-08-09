class TasksController < ApplicationController

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all

    @tasks_json = @tasks.to_json()

    respond_to do |format|
      format.html # index.html.haml
      format.json {
        headers["Cache-Control"] = "no-cache"
        render json: @tasks }
    end
  end


  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params.require(:task).permit(:complete))
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

end
