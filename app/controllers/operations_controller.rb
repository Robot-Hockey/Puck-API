class OperationsController < ApplicationController
  before_action :set_operation, only: [:show, :update, :destroy]

  # GET /operations
  def index
    @operations = Operation.all
    @mappedOps = @operations.map do |op|
      client_id = Card.find(op.card_id).client_id
      client_name = Client.find(client_id).name
      {card_id: op.card_id, value: op.value, name: client_name}
    end

    render json: @mappedOps
  end

  # GET /operations/1
  def show
    render json: @operation
  end

  # POST /operations
  def create
    @card = Card.find_by(public_id: operation_params[:public_id])
    if @card != nil
      @future_value = @card.value + operation_params[:value]
      if @future_value < 0
        render json: {message: "Not enough funds"}, status: :payment_required
      else
        @operation = Operation.new(value: operation_params[:value], card: @card)
        @card[:value] = @future_value
        if @operation.save
          @card.save
          render json: @operation, status: :created, location: @operation
        else
          render json: @operation.errors, status: :unprocessable_entity
        end
      end
    else
      render json: {message: "Card not found"}, status: :unprocessable_entity
    end    
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
      params.require(:operation).permit(:value, :public_id)
    end
end
