class TrainersController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorized_user, only: [:edit, :update]
  before_action :find_trainer, only: [ :show, :edit, :update]

  def index
    @trainers = Trainer.all
  end
  def new
     @trainer = Trainer.new
  end
  def create
    @trainer = Trainer.new(trainer_params)
    respond_to do |format|
      if @trainer.save
        format.html { redirect_to @trainer ,notice: 'Tạo thành công'}
        format.json { render :show, status: :ok, location: @trainer }
      else
        format.html { render 'new' }
        format.json { render json: @trainer.errors, status: :unprocessable_entity }

      end
    end
  end
  def show
  end
  def edit

  end
  def update
    respond_to do |format|
      if @trainer.update(trainer_params)
        format.html { redirect_to @trainer, notice: 'sửa thành công.' }
        format.json { render :show, status: :ok, location: @trainer }
      else
        format.html { render :edit }
        format.json { render json: trainer.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    def trainer_params
      params.require(:trainer).permit( :slug, :trainername,:trainerpicture , :metakeywords, :metadescription, :metaurl, :metaimage, :content, :pilates, :privatetraining, :ciruittraining, :trx)
    end
    def find_trainer
      @trainer = Trainer.friendly.find(params[:id])
    end
end


