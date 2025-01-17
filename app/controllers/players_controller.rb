class PlayersController < ApplicationController
  before_action :set_player, only: %i[ show edit update destroy index ]

  # GET /players or /players.json
  def index
    @players = Player.all
    
    if params[:team_id].present?
      @players = @players.where(team_id: params[:team_id])
    end

    if params[:player_name].present?
      @players = @players.where("name LIKE ?", "%#{params[:player_name]}%")
    end

    if params[:age_from].present? && params[:age_to].present?
      @players = @players.where(age: params[:age_from]..params[:age_to])
    end
  end

  # GET /players/1 or /players/1.json
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players or /players.json
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to player_url(@player), notice: "Player was successfully created." }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1 or /players/1.json
  def update
  @player = Player.find(params[:id])
  if @player.update(player_params)
    redirect_to @player, notice: 'Player was successfully updated.'
  else
    render :edit
  end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_url, notice: 'Player was successfully destroyed.'
  end

  private

  def player_params
    params.require(:player).permit(:name, :age, :position, :team_id, :role, :is_captain, :is_active, :description)
  end
end