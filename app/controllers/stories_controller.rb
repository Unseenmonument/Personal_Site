class StoriesController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def edit
  end

  def create
    @story = Story.new(story_params)

    respond_to do |format|
      if @story.save
        format.html { redirect_to root_path }
#        format.json { render :show, status: :created, location: @story }
      else
        format.html { render :new }
#        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def set_story
      @story = Story.find(params[:id])
    end

    def story_params
      params.require(:story).permit(:author, :comment, :title, :puslished, :story, :image)
    end
end
