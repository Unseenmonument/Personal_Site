class CodeworksController < ApplicationController
  before_action :set_codework, only: [:show, :edit, :update, :destroy]

  def index
    @codeworks = Codework.all
  end

  def show
  end

  def new
    @codework = Codework.new
  end

  def edit
  end

  def create
    @codework = Codework.new(codework_params)

    respond_to do |format|
      if @codework.save
        format.html { redirect_to root_path, notice: 'Codework was successfully created.' }
        format.json { render :show, status: :created, location: @codework }
      else
        format.html { render :new }
        format.json { render json: @codework.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @codework.update(codework_params)
        format.html { redirect_to @codework, notice: 'Codework was successfully updated.' }
        format.json { render :show, status: :ok, location: @codework }
      else
        format.html { render :edit }
        format.json { render json: @codework.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @codework.destroy
    respond_to do |format|
      format.html { redirect_to codeworks_url, notice: 'Codework was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_codework
      @codework = Codework.find(params[:id])
    end


    def codework_params
      params.require(:codework).permit(:company, :city, :state, :postion, :salary, :comments)
    end
end
