class WishersController < ApplicationController
  before_action :set_wisher, only: %i[ show edit update destroy ]

  # GET /wishers or /wishers.json
  def index
    @wishers = Wisher.all
  end

  # GET /wishers/1 or /wishers/1.json
  def show
  end

  # GET /wishers/new
  def new
    @wisher = Wisher.new
  end

  # GET /wishers/1/edit
  def edit
  end

  # POST /wishers or /wishers.json
  def create
    @wisher = Wisher.new(wisher_params)

    respond_to do |format|
      if @wisher.save
        format.html { redirect_to @wisher, notice: "Wisher was successfully created." }
        format.json { render :show, status: :created, location: @wisher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wisher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wishers/1 or /wishers/1.json
  def update
    respond_to do |format|
      if @wisher.update(wisher_params)
        format.html { redirect_to @wisher, notice: "Wisher was successfully updated." }
        format.json { render :show, status: :ok, location: @wisher }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wisher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishers/1 or /wishers/1.json
  def destroy
    @wisher.destroy!

    respond_to do |format|
      format.html { redirect_to wishers_path, status: :see_other, notice: "Wisher was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wisher
      @wisher = Wisher.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def wisher_params
      params.expect(wisher: [ :name ])
    end
end
