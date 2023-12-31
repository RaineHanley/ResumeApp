class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render :index
  end

  def create
    @skill = Skill.create(
      name: params[:name],
      student_id: params[:student_id],
    )
    render :show
  end

  def show
    @skill = Skill.find_by(id: params[:id])
    render :show
  end

  def update
    @skill = Skill.find_by(id: params[:id])
    @skill.update(
      name: params[:name] || @skill.name,
      student_id: params[:student_id] || @skill.student_id,

    )
    render :show
  end

  def destroy
    @skill = Skill.find_by(id: params[:id])
    @skill.destroy

    render json: { message: "Input destroyed successfully" }
  end
end
