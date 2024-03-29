class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
  end

  def show
    @idea = Idea.find_by(id: params[:id])
  end

  def new
  end

  def create
    @idea = Idea.new
    @idea.name = params[:name]

    if @idea.save
      redirect_to "/ideas/#{ @idea.id }"
    else
      render 'new'
    end
  end

  def edit
    @idea = Idea.find_by(id: params[:id])
  end

  def update
    @idea = Idea.find_by(id: params[:id])
    @idea.name = params[:name]
    @idea.idea = params[:idea]

    if @idea.save
      redirect_to "/ideas/#{ @idea.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @idea = Idea.find_by(id: params[:id])
    @idea.destroy


    redirect_to "/ideas"
  end
end
