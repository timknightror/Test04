class ConsortsController < ApplicationController
  # GET /consorts
  # GET /consorts.xml
  def index
    @consorts = Consort.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @consorts }
    end
  end

  # GET /consorts/1
  # GET /consorts/1.xml
  def show
    @consort = Consort.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @consort }
    end
  end

  # GET /consorts/new
  # GET /consorts/new.xml

  def add_comp
    @consort = Consort.find(params[:id])
  end

  def new
    @consort = Consort.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @consort }
    end
  end

  # GET /consorts/1/edit
  def edit
    @consort = Consort.find(params[:id])
  end

  # POST /consorts
  # POST /consorts.xml
  def create
    @consort = Consort.new(params[:consort])

    respond_to do |format|
      if @consort.save
        format.html { redirect_to(@consort, :notice => 'Consort was successfully created.') }
        format.xml  { render :xml => @consort, :status => :created, :location => @consort }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @consort.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /consorts/1
  # PUT /consorts/1.xml
  def update
    @consort = Consort.find(params[:id])

    respond_to do |format|
      if @consort.update_attributes(params[:consort])
        format.html { redirect_to(@consort, :notice => 'Consort was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @consort.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /consorts/1
  # DELETE /consorts/1.xml
  def destroy
    @consort = Consort.find(params[:id])
    @consort.destroy

    respond_to do |format|
      format.html { redirect_to(consorts_url) }
      format.xml  { head :ok }
    end
  end
end
