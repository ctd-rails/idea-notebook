class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
    respond_to do |format|
      format.html { render 'index' } #doesn't have to have the render
      format.json { render json: @ideas}
    end
  end
end
