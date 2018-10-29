class StoriesController < ApplicationController
  before_action :set_user, only: [:index, :show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :new, :edit, :update, :destroy]

  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
