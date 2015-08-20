class LodgementsController < ApplicationController
  before_action :set_lodgement, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_user!

  # GET /lodgements
  # GET /lodgements.json
  def index
    @lodgements = Lodgement.all
  end

  # GET /lodgements/1
  # GET /lodgements/1.json
  def show
  end

  # GET /lodgements/new
  def new
    @lodgement = current_user.lodgements.build
  end

  # GET /lodgements/1/edit
  def edit
  end

  # POST /lodgements
  # POST /lodgements.json
  def create
    @lodgement = current_user.lodgements.build(lodgement_params)

 

@acc = Bankaccount.find(@lodgement.name)
    @acc.amount += @lodgement.amount
    @lodge.balance -= @lodgement.amount	    

@lodgement.save
@acc.save
    puts @acc.amount
    puts @lodgement.balance


 respond_to do |format|
      if @lodgement.save
        format.html { redirect_to @lodgement, notice: 'Lodgement was successfully created.' }
        format.json { render :show, status: :created, location: @lodgement }
      else
        format.html { render :new }
        format.json { render json: @lodgement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lodgements/1
  # PATCH/PUT /lodgements/1.json
  def update
    respond_to do |format|
      if @lodgement.update(lodgement_params)
        format.html { redirect_to @lodgement, notice: 'Lodgement was successfully updated.' }
        format.json { render :show, status: :ok, location: @lodgement }
      else
        format.html { render :edit }
        format.json { render json: @lodgement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lodgements/1
  # DELETE /lodgements/1.json
  def destroy
    @lodgement.destroy
    respond_to do |format|
      format.html { redirect_to lodgements_url, notice: 'Lodgement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lodgement
      @lodgement = Lodgement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lodgement_params
      params.require(:lodgement).permit(:name, :amount, :description)
    end
end
