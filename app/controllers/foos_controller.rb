class FoosController < ApplicationController
  before_filter :get_foo, only: [:show, :update, :destroy]

  def index
    @foos = Foo.all
    render json: @foos, status: :ok
  end

  def show
    render json: @foo, status: :ok, location: @foo
  end

  def create
    @foo = Foo.new(params[:foo])

    if @foo.save
      render json: @foo, status: :created, location: @foo
    else
      render json: @foo.errors, status: :unprocessable_entity
    end
  end

  def update
    if @foo.update(params[:foo])
      head :ok
    else
      render json: @foo.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @foo.destroy
      head :no_content
    else
      render json: @foo.errors
    end
  end

  private
  def get_foo
    @foo = Foo.get(params[:id])
    head :not_found if @foo.nil?
  end

end
