class CardsController < ApplicationController
  before_action :set_card, only: [:show, :update, :destroy]

  # GET /cards
  def index
    @cards = Card.all

    render json: @cards
  end

  # GET /cards/1
  def show
    render json: {card: @card, client: @card.client}
  end

  # POST /cards
  def create
    @client = Client.find_by(email: create_client_params[:email])
    @card = Card.new(value: 0, client: @client, public_id: create_client_params[:public_id])
    if @client != nil
      @card.client = @client
      if @card.save
        render json: @card, status: :created, location: @card
      else
        render json: @card.errors, status: :unprocessable_entity
      end
    else
      @new_client = Client.new(email: create_client_params[:email], 
                               name: create_client_params[:name],
                               company_id: create_client_params[:company_id])
      @card.client = @new_client
      if @new_client.save and @card.save
        render json: {'client': @new_client, 'card': @card}, status: :created
      else
        render json: {'client': @new_client.errors, 'card': @card.errors}, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /cards/1
  def update
    if @card.update(card_params)
      render json: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cards/1
  def destroy
    @card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find_by(public_id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def card_params
      params.require(:card).permit(:value, :email, :public_id)
    end

    def create_client_params
      params.require(:card).permit(:name, :email, :company_id, :card_id)    
    end

end
