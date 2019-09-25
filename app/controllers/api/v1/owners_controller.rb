class Api::V1::OwnersController < ApplicationController
  before_action :set_api_v1_owner, only: [:show, :update, :destroy]

  # GET /api/v1/owners
  def index
    @api_v1_owners = Api::V1::Owner.all

    render json: @api_v1_owners
  end

  # GET /api/v1/owners/1
  def show
    render json: @api_v1_owner
  end

  # POST /api/v1/owners
  def create
    @api_v1_owner = Api::V1::Owner.new(api_v1_owner_params)

    if @api_v1_owner.save
      render json: @api_v1_owner, status: :created, location: @api_v1_owner
    else
      render json: @api_v1_owner.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/owners/1
  def update
    if @api_v1_owner.update(api_v1_owner_params)
      render json: @api_v1_owner
    else
      render json: @api_v1_owner.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/owners/1
  def destroy
    @api_v1_owner.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_owner
      @api_v1_owner = Api::V1::Owner.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v1_owner_params
      params.fetch(:api_v1_owner, {})
    end
end
