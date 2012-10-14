class FoosController < ApplicationController
  # GET /foos
  # GET /foos.json
  def index
    @foos = Foo.all

    render json: @foos
  end

  # GET /foos/1
  # GET /foos/1.json
  def show
    @foo = Foo.get(params[:id])

    render json: @foo
  end

  # GET /foos/new
  # GET /foos/new.json
  def new
    @foo = Foo.new

    render json: @foo
  end

  # POST /foos
  # POST /foos.json
  def create
    @foo = Foo.new(params[:foo])

    if @foo.save
      render json: @foo, status: :created, location: @foo
    else
      render json: @foo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /foos/1
  # PATCH/PUT /foos/1.json
  def update
    @foo = Foo.get(params[:id])

    if @foo.update(params[:foo])
      head :no_content
    else
      render json: @foo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /foos/1
  # DELETE /foos/1.json
  def destroy
    @foo = Foo.get(params[:id])
    @foo.destroy

    head :no_content
  end
end
