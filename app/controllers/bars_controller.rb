class BarsController < ApplicationController
  # GET /bars
  # GET /bars.json
  def index
    @bars = Bar.all(foo_id: params[:foo_id])

    render json: @bars
  end

  # GET /bars/1
  # GET /bars/1.json
  def show
    @bar = Bar.get(params[:id])

    render json: @bar
  end

  # GET /bars/new
  # GET /bars/new.json
  def new
    @bar = Bar.new

    render json: @bar
  end

  # POST /bars
  # POST /bars.json
  def create
    @bar = Bar.new(params[:bar])

    if @bar.save
      render json: @bar, status: :created, location: @bar
    else
      render json: @bar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bars/1
  # PATCH/PUT /bars/1.json
  def update
    @bar = Bar.get(params[:id])

    if @bar.update(params[:bar])
      head :no_content
    else
      render json: @bar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bars/1
  # DELETE /bars/1.json
  def destroy
    @bar = Bar.get(params[:id])
    @bar.destroy

    head :no_content
  end
end
