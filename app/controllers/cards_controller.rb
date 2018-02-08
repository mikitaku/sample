class CardsController < ApplicationController

  def index
    @msg = "index page"
    @data = Card.all
  end

  def show
    @msg = "show details"
    @data = Card.find(params[:id])
  end

  def add
    @msg = "add data"
    @card = Card.new
  end

  def create
     if request.post? then
        Card.create(card_params)
      end
      redirect_to '/cards'
  end

  def edit
    @msg = "update data"
    @card = Card.find(params[:id])
  end

  def update
    obj = Card.find(params[:id])
    obj.update(card_params)
    redirect_to '/cards'
  end

  def delete
    obj =Card.find(params[:id])
    obj.destroy
    redirect_to '/cards'
  end

end


private
def card_params
    params.require(:card).permit(:author, :title, :publisher, :price, :memo)
end
