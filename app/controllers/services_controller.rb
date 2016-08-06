class ServicesController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorized_user, only: [:edit, :update]
  before_action :find_service, only: [ :show, :edit, :update]

  def index
    @services = Service.all
  end
  def new
     @service = Service.new
  end
  def create
    @service = Service.new(service_params)
    respond_to do |format|
      if @service.save
        format.html { redirect_to @service ,notice: 'Tạo thành công'}
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render 'new' }
        format.json { render json: @service.errors, status: :unprocessable_entity }

      end
    end
  end
  def show
  end
  def edit

  end
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'sửa thành công.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: service.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    def service_params
      params.require(:service).permit( :slug, :survicename, :servicepicture,:metakeywords, :metadescription, :metaurl, :metaimage, :content, :active)
    end
    def find_service
      @service = Service.friendly.find(params[:id])
    end
end

