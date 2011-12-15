class AtesController < ApplicationController
  # GET /ates
  # GET /ates.json
  def index
    @ates = Ate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ates }
    end
  end

  # GET /ates/1
  # GET /ates/1.json
  def show
    @ate = Ate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @ate }
    end
  end

  # GET /ates/new
  # GET /ates/new.json
  def new
    @ate = Ate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @ate }
    end
  end

  # GET /ates/1/edit
  def edit
    @ate = Ate.find(params[:id])
  end

  # POST /ates
  # POST /ates.json
  def create
    @ate = Ate.new(params[:ate])

    respond_to do |format|
      if @ate.save
        format.html { redirect_to @ate, :notice => 'Ate was successfully created.' }
        format.json { render :json => @ate, :status => :created, :location => @ate }
      else
        format.html { render :action => "new" }
        format.json { render :json => @ate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ates/1
  # PUT /ates/1.json
  def update
    @ate = Ate.find(params[:id])

    respond_to do |format|
      if @ate.update_attributes(params[:ate])
        format.html { redirect_to @ate, :notice => 'Ate was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @ate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ates/1
  # DELETE /ates/1.json
  def destroy
    @ate = Ate.find(params[:id])
    @ate.destroy

    respond_to do |format|
      format.html { redirect_to ates_url }
      format.json { head :ok }
    end
  end
end
