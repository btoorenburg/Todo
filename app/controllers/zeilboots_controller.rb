class ZeilbootsController < ApplicationController
  # GET /zeilboots
  # GET /zeilboots.xml
  def index
    @zeilboots = Zeilboot.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @zeilboots }
    end
  end

  # GET /zeilboots/1
  # GET /zeilboots/1.xml
  def show
    @zeilboot = Zeilboot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @zeilboot }
    end
  end

  # GET /zeilboots/new
  # GET /zeilboots/new.xml
  def new
    @zeilboot = Zeilboot.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @zeilboot }
    end
  end

  # GET /zeilboots/1/edit
  def edit
    @zeilboot = Zeilboot.find(params[:id])
  end

  # POST /zeilboots
  # POST /zeilboots.xml
  def create
    @zeilboot = Zeilboot.new(params[:zeilboot])

    respond_to do |format|
      if @zeilboot.save
        format.html { redirect_to(@zeilboot, :notice => 'Zeilboot was successfully created.') }
        format.xml  { render :xml => @zeilboot, :status => :created, :location => @zeilboot }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @zeilboot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /zeilboots/1
  # PUT /zeilboots/1.xml
  def update
    @zeilboot = Zeilboot.find(params[:id])

    respond_to do |format|
      if @zeilboot.update_attributes(params[:zeilboot])
        format.html { redirect_to(@zeilboot, :notice => 'Zeilboot was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @zeilboot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /zeilboots/1
  # DELETE /zeilboots/1.xml
  def destroy
    @zeilboot = Zeilboot.find(params[:id])
    @zeilboot.destroy

    respond_to do |format|
      format.html { redirect_to(zeilboots_url) }
      format.xml  { head :ok }
    end
  end
end
