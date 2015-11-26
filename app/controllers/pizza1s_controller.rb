class Pizza1sController < ApplicationController
  before_action :set_pizza1, only: [:show, :edit, :update, :destroy]

  # GET /pizza1s
  # GET /pizza1s.json
  def index
    @pizza1s = Pizza1.all
  end

  # GET /pizza1s/1
  # GET /pizza1s/1.json
  def show
  end

  # GET /pizza1s/new
  def new
    @pizza1 = Pizza1.new
  end

  # GET /pizza1s/1/edit
  def edit
  end

  # POST /pizza1s
  # POST /pizza1s.json
  def create
    @pizza1 = Pizza1.new(pizza1_params)

    respond_to do |format|
      if @pizza1.save
        format.html { redirect_to @pizza1, notice: 'Pizza1 was successfully created.' }
        format.json { render :show, status: :created, location: @pizza1 }
      else
        format.html { render :new }
        format.json { render json: @pizza1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pizza1s/1
  # PATCH/PUT /pizza1s/1.json
  def update
    respond_to do |format|
      if @pizza1.update(pizza1_params)
        format.html { redirect_to @pizza1, notice: 'Pizza1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @pizza1 }
      else
        format.html { render :edit }
        format.json { render json: @pizza1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pizza1s/1
  # DELETE /pizza1s/1.json
  def destroy
    @pizza1.destroy
    respond_to do |format|
      format.html { redirect_to pizza1s_url, notice: 'Pizza1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pizza1
      @pizza1 = Pizza1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pizza1_params
      params.require(:pizza1).permit(:nombre, :tamano, :precio)
    end
end
