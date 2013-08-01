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

  private

  def idea_params
    params.require(:idea).permit(:name, :description)
  end
end
