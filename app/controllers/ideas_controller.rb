class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
    respond_to do |format|
      format.html { render 'index' } #doesn't have to have the render
      format.json { render json: @ideas}
    end
  end

  def new
    @idea = Idea.new
    respond_to do |format|
      format.html { render 'new' }
    end
  end

  def create
    Idea.create(idea_params)

    respond_to do |format|
      format.html { redirect_to ideas_url }
    end
  end

  def show
    @idea = Idea.find_by_id(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @idea }
    end
  end

  def edit
    @idea = Idea.find_by_id(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def destroy
    idea = Idea.find_by_id(params[:id])
    idea.destroy

    respond_to do |format|
      format.html { redirect_to ideas_url }
    end
  end

  private

  def idea_params
    params.require(:idea).permit(:name, :description)
  end
end
