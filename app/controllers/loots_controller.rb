# frozen_string_literal: true

class LootsController < OpenReadController
  before_action :set_loot, only: %i[update destroy]

  # GET /loots
  def index
    @loots = Loot.all

    render json: @loots
  end

  # GET /loots/1
  def show
    render json: Loot.find(params[:id])
  end

  # POST /loots
  def create
    @loot = current_user.loots.build(loot_params)

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
      @loot = current_user.loots.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def loot_params
      params.require(:loot).permit(:name, :value, :user_id)
    end
end
