class WishesController < ApplicationController
  before_action :set_wisher, only: %i[ index new create ]
  before_action :set_wish, only: %i[ show edit update destroy ]

  # GET /wisher/:wisher_id/wishes or /wishes.json
  def index
    @wishes = @wisher.wishes
  end

  # GET /wishes/1 or /wishes/1.json
  def show
  end

  # GET /wishes/new
  def new
    @wish = Wish.new
  end

  # GET /wishes/1/edit
  def edit
  end

  # POST /wishes or /wishes.json
  def create
    @wish = Wish.new(wisher: @wisher, **wish_params)

    respond_to do |format|
      if @wish.save
        format.html { redirect_to @wish, notice: "Wish was successfully created." }
        format.json { render :show, status: :created, location: @wish }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wishes/1 or /wishes/1.json
  def update
    respond_to do |format|
      if @wish.update(wish_params)
        format.html { redirect_to @wish, notice: "Wish was successfully updated." }
        format.json { render :show, status: :ok, location: @wish }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishes/1 or /wishes/1.json
  def destroy
    @wish.destroy!

    respond_to do |format|
      format.html { redirect_to wishes_path, status: :see_other, notice: "Wish was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
   
    def set_wisher
      @wisher = Wisher.find(params.expect(:wisher_id))
    end

    def set_wish
      @wish = Wish.find(params.expect(:id))
      @wisher = @wish.wisher
    end

    # Only allow a list of trusted parameters through.
    def wish_params
      params.expect(wish: [ :title, :url, :body ])
    end
end
