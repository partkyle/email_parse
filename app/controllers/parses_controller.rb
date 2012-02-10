class ParsesController < ApplicationController
  # GET /parses
  # GET /parses.json
  def index
    @parses = Parse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parses }
    end
  end

  # GET /parses/1
  # GET /parses/1.json
  def show
    @parse = Parse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @parse }
    end
  end

  # GET /parses/new
  # GET /parses/new.json
  def new
    @parse = Parse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @parse }
    end
  end

  # GET /parses/1/edit
  def edit
    @parse = Parse.find(params[:id])
  end

  # POST /parses
  # POST /parses.json
  def create
    @parse = Parse.new(params[:parse])

    respond_to do |format|
      if @parse.save
        format.html { redirect_to @parse, notice: 'Parse was successfully created.' }
        format.json { render json: @parse, status: :created, location: @parse }
      else
        format.html { render action: "new" }
        format.json { render json: @parse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /parses/1
  # PUT /parses/1.json
  def update
    @parse = Parse.find(params[:id])

    respond_to do |format|
      if @parse.update_attributes(params[:parse])
        format.html { redirect_to @parse, notice: 'Parse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @parse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parses/1
  # DELETE /parses/1.json
  def destroy
    @parse = Parse.find(params[:id])
    @parse.destroy

    respond_to do |format|
      format.html { redirect_to parses_url }
      format.json { head :no_content }
    end
  end
end
