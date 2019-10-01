class FoundsController < ApplicationController
    before_action :set_found, only: [:show, :edit, :update, :destroy]
    
    # GET /founds
    # GET /founds.json
    def index
       @founds = Found.all
    end
    
    # GET /founds/1
    # GET /founds/1.json
    def show
    end
    
    # GET /founds/new
    def new
       @found = Found.new
    end
    
    # GET /founds/1/edit
    def edit
    end
    
    # POST /founds
    # POST /founds.json
    def create
       @found = Found.create(found_params)
       
       respond_to do |format|
          if @found.save
             format.html { redirect_to @found, notice: 'found was successfully created.' }
             format.json { render :show, status: :created, found: @found }
          else
             format.html { render :new }
             format.json { render json: @found.errors, status: :unprocessable_entity }
          end
       end
       
    end
    
    # PATCH/PUT /founds/1
    # PATCH/PUT /founds/1.json
    def update
       respond_to do |format|
          if @found.update(found_params)
             format.html { redirect_to @found, notice: 'found was successfully updated.' }
             format.json { render :show, status: :ok, found: @found }
          else
             format.html { render :edit }
             format.json { render json: @found.errors, status: :unprocessable_entity }
          end
       end
       
    end
    
    # DELETE /founds/1
    # DELETE /founds/1.json
    def destroy
       @found.destroy
          respond_to do |format|
          format.html { redirect_to founds_url, notice: 'found was successfully destroyed.' }
          format.json { head :no_content }
       end
    end
    
    private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_found
       @found = Found.find(params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def found_params
       params(:found).permit(:name)
    end
 end