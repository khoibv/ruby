class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  # GET /todos
  # GET /todos.json
  def index
    @todos = Todo.all
  end

  # GET /todos/1
  # GET /todos/1.json
  def show
  end

  # GET /todos/new
  def new
    @todo = Todo.new
  end

  # GET /todos/1/edit
  def edit
  end

  # POST /todos
  # POST /todos.json
  def create
    @user = User.find(params[:user_id])
    # @todo = Todo.new(todo_params)
    @todo = @user.todos.create(todo_params)

    redirect_to user_path(@user)

    # respond_to do |format|
    #   if @todo.save
    #     format.html { redirect_to @todo, notice: 'Todo was successfully created.' }
    #     format.json { render :show, status: :created, location: @todo }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @todo.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /todos/1
  # PATCH/PUT /todos/1.json
  def update
    respond_to do |format|
      if @todo.update(todo_params)
        format.html { redirect_to @todo, notice: 'Todo was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo }
      else
        format.html { render :edit }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todos/1
  # DELETE /todos/1.json
  def destroy

    @user = User.find(params[:user_id])
    @todo = @user.todos.find(params[:id])
    @todo.destroy

    redirect_to user_path(@user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_params
      params.require(:todo).permit(:todo, :status, :priority)
    end
end
