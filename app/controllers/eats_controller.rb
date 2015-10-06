class EatsController < ApplicationController
  before_action :set_eat, only: [:show, :edit, :update, :destroy]

  # GET /eats
  # GET /eats.json
  def index
    @eats = Eat.all
  end

  # GET /eats/1
  # GET /eats/1.json
  def show
  end

  # GET /eats/new
  def new
    @eat = Eat.new
  end

  # GET /eats/1/edit
  def edit
  end

  # POST /eats
  # POST /eats.json
  def create
    @eat = Eat.new(eat_params)

    respond_to do |format|
      if @eat.save
        format.html { redirect_to @eat, notice: 'Eat was successfully created.' }
        format.json { render :show, status: :created, location: @eat }
      else
        format.html { render :new }
        format.json { render json: @eat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eats/1
  # PATCH/PUT /eats/1.json
  def update
    respond_to do |format|
      if @eat.update(eat_params)
        format.html { redirect_to @eat, notice: 'Eat was successfully updated.' }
        format.json { render :show, status: :ok, location: @eat }
      else
        format.html { render :edit }
        format.json { render json: @eat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eats/1
  # DELETE /eats/1.json
  def destroy
    @eat.destroy
    respond_to do |format|
      format.html { redirect_to eats_url, notice: 'Eat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eat
      @eat = Eat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eat_params
      params.require(:eat).permit(:title, :components, :preparation, :preparation_time, :cost, :tags)
    end
end
