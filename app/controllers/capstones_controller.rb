class CapstonesController < ApplicationController
  def index
    @capstones = Capstone.all
    render :index
  end

  def create
    @capstone = Capstone.create(
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
      student_id: params[:student_id],
    )
    render :show
  end

  def show
    @capstone = Capstone.find_by(id: params[:id])
    render :show
  end

  def update
    @capstone = Capstone.find_by(id: params[:id])
    @capstone.update(
      name: params[:name] || @capstone.name,
      description: params[:description] || @capstone.description,
      url: params[:url] || @capstone.url,
      screenshot: params[:screenshot] || @capstone.screenshot,
      student_id: params[:student_id] || @capstone.student_id,
    )
    render :show
  end

  def destroy
    @capstone = Capstone.find_by(id: params[:id])
    @capstone.destroy

    render json: { message: "Input destroyed successfully" }
  end
end
