class LostsController < ApplicationController
    before_action :set_lost, only: [:show, :edit, :update, :destroy]
    
    # GET /losts
    # GET /losts.json
    def index
      byebug
       @losts = Lost.all
    end
    
    # GET /losts/1
    # GET /losts/1.json
    def show
      byebug
    end
    
    # GET /losts/new
    def new
      byebug
       @lost = Lost.new
    end
    
    # GET /losts/1/edit
    def edit
      byebug
    end
    
    # POST /losts
    # POST /losts.json
    def create
      byebug 
      @lost = Lost.create(lost_params)
      byebug
       respond_to do |format|
          if @lost.save
             format.html { redirect_to @lost, notice: 'lost was successfully created.' }
             format.json { render :show, status: :created, lost: @lost }
          else
             format.html { render :new }
             format.json { render json: @lost.errors, status: :unprocessable_entity }
          end
       end
       
    end
    
    # PATCH/PUT /losts/1
    # PATCH/PUT /losts/1.json
    def update
      byebug
       respond_to do |format|
          if @lost.update(lost_params)
             format.html { redirect_to @lost, notice: 'lost was successfully updated.' }
             format.json { render :show, status: :ok, lost: @lost }
          else
             format.html { render :edit }
             format.json { render json: @lost.errors, status: :unprocessable_entity }
          end
       end
       
    end
    
    # DELETE /losts/1
    # DELETE /losts/1.json
    def destroy
      byebug
       @lost.destroy
          respond_to do |format|
          format.html { redirect_to losts_url, notice: 'lost was successfully destroyed.' }
          format.json { head :no_content }
       end
    end
    
    private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_lost
      byebug
       @lost = Lost.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def lost_params
       params(:lost).permit(:name)
    end
 end