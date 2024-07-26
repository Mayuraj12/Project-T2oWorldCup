class TeamsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_team, only: %i[show edit update destroy index]
  before_action :authenticate_user!

  def index
    @teams = Team.all
    @teams = policy_scope(Team)
    authorize @teams
  end

  def show
    authorize @team
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
    @team.players.build
    authorize @team
  end

  def create
    @team = Team.new(team_params)
    authorize @team
    if @team.save
      redirect_to @team, notice: 'Team was successfully created.'
    else
      render :new
    end
  end

  def edit
    @team = Team.find(params[:id])
    authorize @team
  end

  def update
    authorize @team
    if @team.update(team_params)
      redirect_to @team, notice: 'Team was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @team = Team.find(params[:id])
    authorize @team
    @team.destroy
    redirect_to teams_url, notice: 'Team was successfully destroyed.'
  end

  private
  def set_team
    @team = Team.find(params[:id])
  end
  
  def team_params
  params.require(:team).permit(:name, :country, players_attributes: [:id, :name, :age, :position, :role, :is_captain, :is_active, :_destroy])
end
end