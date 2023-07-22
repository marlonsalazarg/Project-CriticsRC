class GamesController < ApplicationController
  before_action :set_game, only: %i[ show edit update destroy ]

  # GET /games
  def index
    @games = Game.all
  end

  # GET /games/1
  def show
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to @game, notice: "Game was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      redirect_to @game, notice: "Game was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
    redirect_to games_url, notice: "Game was successfully destroyed.", status: :see_other
  end

  # Custom Routes

  # POST /games/:id/add_genre
  def add_genre
    game = Game.find(params[:id])
    genre = Genre.find(params[:genre_id])

    game.genres << genre
    redirect_to game
  end

  # DELETE /games/:id/remove_genre
  def remove_genre
    game = Game.find(params[:id])
    genre = Genre.find(params[:genre_id])

    game.genres.delete(genre)
    redirect_to game, status: :see_other
  end

  # POST /games/:id/add_platform
  def add_platform
    game = Game.find(params[:id])
    platform = Platform.find(params[:platform_id])

    game.platforms << platform
    redirect_to game
  end

  # DELETE /games/:id/remove_platform
  def remove_platform
    game = Game.find(params[:id])
    platform = Platform.find(params[:platform_id])

    game.platforms.delete(platform)
    redirect_to game, status: :see_other
  end

  def add_developer
    company = Company.find(params[:company_id])
    game = Game.find(params[:id])
    game.involved_companies.create(developer: true, publisher: false, company: company)
    redirect_to game
  end

  def add_publisher
    company = Company.find(params[:company_id])
    game = Game.find(params[:id])
    game.involved_companies.create(developer: false, publisher: true, company: company)
    redirect_to game
  end

  def remove_developer
    company = InvolvedCompany.find(params[:company_id])
    game = Game.find(params[:id])
    game.involved_companies.delete(company)
    redirect_to games_path
  end

  def remove_publisher
    company = InvolvedCompany.find(params[:company_id])
    game = Game.find(params[:id])
    game.involved_companies.delete(company)
    redirect_to games_path
  end

  private
     # Use callbacks to share common setup or constraints between actions.
     def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game).permit(:name, :summary, :release_date, :category, :rating, :cover)
    end

    def genre_params
      params.require(:genre).permit(:id, :name)
    end

    def  platform_params
      params.require(:platform).permit(:id, :name)
    end

    def involved_companies_params
      params.require(:involved_company).permit(:id, :name)
    end
end
