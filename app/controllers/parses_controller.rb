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
