class BarsController < ApplicationController
  before_filter :get_bar, only: [:show, :update, :destroy]

  def index
    @bars = Bar.all(foo_id: params[:foo_id])
    render json: @bars, status: :ok
  end

  def show
    render json: @bar
  end

  def create
    @bar = Bar.new(params[:bar])

    if @bar.save
      render json: @bar, status: :created, location: @bar
    else
      render json: @bar.errors, status: :unprocessable_entity
    end
  end

  def update
    if @bar.update(params[:bar])
      head :ok
    else
      render json: @bar.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @bar.destroy
      head :no_content
    else
      render json: @bar.errors
    end
  end

  private
  def get_bar
    @bar = Bar.get(params[:id])
    head :not_found if @bar.nil?
  end

end
