class OperationsController < ApplicationController
  before_action :set_operation, only: [:show, :update, :destroy]

  # GET /operations
  def index
    @operations = Operation.all

    render json: @operations
  end

  # GET /operations/1
  def show
    render json: @operation
  end

  # POST /operations
  def create
    @card = Card.find(operation_params[:card_id])
    if(@card.exists?)
      @operation = Operation.new(operation_params)
      @card[:value] = @card[:value] + operation_params[:value]
      if @operation.save
        render json: @operation, status: :created, location: @operation
      else
        render json: @operation.errors, status: :unprocessable_entity
      end
    else
      render json: @operation.errors, status: :unprocessable_entity        
  end

  # PATCH/PUT /operations/1
  def update
    if @operation.update(operation_params)
      render json: @operation
    else
      render json: @operation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /operations/1
  def destroy
    @operation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operation
      @operation = Operation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def operation_params
      params.require(:operation).permit(:value, :card_id)
    end
end
