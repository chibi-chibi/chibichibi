class TopicsController < ApplicationController

  def index
    @topics = Topic.all.order("created_at desc")
  end

  def show
    @topic = Topic.find params[:id]
    @post = Post.new
    @posts = @topic.posts
  end

  def new
    @topic = Topic.new
  end

  def create
    @category = Category.find params[:category_id]
    @topic = Topic.new(topics_params)
    @topic.user_id = current_user.id
    @topic.category_id = @category.id
    if @topic.save
      redirect_to :back
    else
      render :new
    end
  end

  private
    def topics_params
      params.require(:topic).permit(:title, :content)
    end
end