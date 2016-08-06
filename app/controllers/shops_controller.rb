class ShopsController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorized_user, only: [:edit, :update]
  before_action :find_shop, only: [ :show, :edit, :update]

  def index
    @shops = Shop.all
  end
  def new
     @shop = Shop.new
  end
  def create
    @shop = Shop.new(shop_params)
    respond_to do |format|
      if @shop.save
        format.html { redirect_to @shop ,notice: 'Tạo thành công'}
        format.json { render :show, status: :ok, location: @shop }
      else
        format.html { render 'new' }
        format.json { render json: @shop.errors, status: :unprocessable_entity }

      end
    end
  end
  def show
  end
  def edit

  end
  def update
    respond_to do |format|
      if @shop.update(shop_params)
        format.html { redirect_to @shop, notice: 'sửa thành công.' }
        format.json { render :show, status: :ok, location: @shop }
      else
        format.html { render :edit }
        format.json { render json: shop.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    def shop_params
      params.require(:shop).permit( :slug, :itemname, :itempicture, :metakeywords, :metadescription, :metaurl, :metaimage, :content, :price, :available)
    end
    def find_shop
      @shop = Shop.friendly.find(params[:id])
    end
end

