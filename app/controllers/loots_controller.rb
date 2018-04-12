class LootsController < ApplicationController
  before_action :set_loot, only: [:show, :update, :destroy]

  # GET /loots
  def index
    @loots = Loot.all

    render json: @loots
  end

  # GET /loots/1
  def show
    render json: @loot
  end

  # POST /loots
  def create
    @loot = Loot.new(loot_params)

    if @loot.save
      render json: @loot, status: :created
    else
      render json: @loot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /loots/1
  def update
    if @loot.update(loot_params)
      render json: @loot
    else
      render json: @loot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /loots/1
  def destroy
    @loot.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loot
      @loot = Loot.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def loot_params
      params.require(:loot).permit(:name, :value, :user_id)
    end
end
