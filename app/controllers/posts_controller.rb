class PostsController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorized_user, only: [:edit, :update]
  before_action :find_post, only: [ :show, :edit, :update]

  def index
    @posts = Post.all
  end
  def new
     @post = Post.new
  end
  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post ,notice: 'Tạo bài viết thành công'}
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }

      end
    end
  end
  def show
    set_meta_tags title: @post.postname,
                  site: 'missfitness.vn',
                  reverse: true,
                  description: @post.metadescription,
                  keywords: @post.metakeywords,
                  og: {
                    title: @post.postname,
                    description: @post.metadescription,
                    type: 'website',
                    url: post_url(@post),
                    keywords: @post.metakeywords,
                    image: @metaimage
                  }
  end
  def edit

  end
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Link was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: post.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    def post_params
      params.require(:post).permit(:postname, :metakeywords, :metadescription, :metaimage, :content, :hide, :home, :postpicture, :slug )
    end
    def find_post
      @post = Post.friendly.find(params[:id])
    end
end

