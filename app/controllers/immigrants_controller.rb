
class ImmigrantsController < ApplicationController
  # GET /immigrants
  # GET /immigrants.json
  def index
    @immigrants = Immigrant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @immigrants }
    end
  end

  # GET /immigrants/1
  # GET /immigrants/1.json
  def show
    @immigrant = Immigrant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @immigrant }
    end
  end

  # GET /immigrants/new
  # GET /immigrants/new.json
  def new
    @immigrant = Immigrant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @immigrant }
    end
  end

  # GET /immigrants/1/edit
  def edit
    @immigrant = Immigrant.find(params[:id])
  end

  # POST /immigrants
  # POST /immigrants.json
  def create
    @immigrant = Immigrant.new(params[:immigrant])

    respond_to do |format|
      if @immigrant.save
        format.html { redirect_to @immigrant, notice: 'Immigrant was successfully created.' }
        format.json { render json: @immigrant, status: :created, location: @immigrant }
      else
        format.html { render action: "new" }
        format.json { render json: @immigrant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /immigrants/1
  # PUT /immigrants/1.json
  def update
    @immigrant = Immigrant.find(params[:id])

    respond_to do |format|
      if @immigrant.update_attributes(params[:immigrant])
        format.html { redirect_to @immigrant, notice: 'Immigrant was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @immigrant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /immigrants/1
  # DELETE /immigrants/1.json
  def destroy
    @immigrant = Immigrant.find(params[:id])
    @immigrant.destroy

    respond_to do |format|
      format.html { redirect_to immigrants_url }
      format.json { head :no_content }
    end
  end
end
