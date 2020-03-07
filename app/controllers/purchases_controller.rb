class PurchasesController < ApplicationController
  def index
    if current_user != nil
      @purchases = current_user.purchases
      if @purchases.count == 0
        flash[:alert] = "You have no purchases."
      end
    end
  end

  def create
    @user = User.find(current_user.id)
    @purchase = Purchase.new(user_id: current_user.id)
    @purchase_items = PurchaseItem.where(user_id: current_user.id, pending: true)
    @total_price = 0
    @purchase_items.each do |item|
      @total_price += item.artwork.price
      item.update(pending: false)
      item.artwork.update(sold: true)
      @purchase.purchase_items << item
    end

    @purchase.update(total_price: @total_price, completed: false)

    if @purchase.save
      flash[:success] = "Purchase successful!"
      render :show
    else
      render :new
    end
  end

  def update
    @purchase = Purchase.find(params[:id])
    if @purchase.update(purchase_params)
      redirect_to @purchase
    else
      render "edit"
    end
  end

  def new
    @purchase = Purchase.new(user_id: current_user.id)
  end

  def edit
    @purchase = Purchase.find(params[:id])
  end

  def show
    @purchase = PurchaseItem.find(user_id: current_user.id)
    @user = User.find(current_user.id)
  end

  private

  def purchase_params
    params.permit(:total_price, :artwork)
  end
end
