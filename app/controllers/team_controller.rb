class TeamController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
  end

  
  def new
    @teams = Team.new
  end

 
  def edit
  end

  
  def create
    @teams = Team.new(team_params)

  end

  
  def update
    
  end

  
  def destroy
    @team.destroy!

  end

  private
    
    def set_team
      @team = Team.find(params[:id])
    end

    def team_params
      params.fetch(:team, {})
    end
end
