class SelfService::CustomersController < ApplicationController
  # GET /self_service/customers
  # GET /self_service/customers.xml
  def index
    @self_service_customers = SelfService::Customer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @self_service_customers }
    end
  end

  # GET /self_service/customers/1
  # GET /self_service/customers/1.xml
  def show
    @self_service_customer = SelfService::Customer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @self_service_customer }
    end
  end

  # GET /self_service/customers/new
  # GET /self_service/customers/new.xml
  def new
    @self_service_customer = SelfService::Customer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @self_service_customer }
    end
  end

  # GET /self_service/customers/1/edit
  def edit
    @self_service_customer = SelfService::Customer.find(params[:id])
  end

  # POST /self_service/customers
  # POST /self_service/customers.xml
  def create
    @self_service_customer = SelfService::Customer.new(params[:self_service_customer])

    respond_to do |format|
      if @self_service_customer.save
        format.html { redirect_to(@self_service_customer, :notice => 'Customer was successfully created.') }
        format.xml  { render :xml => @self_service_customer, :status => :created, :location => @self_service_customer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @self_service_customer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /self_service/customers/1
  # PUT /self_service/customers/1.xml
  def update
    @self_service_customer = SelfService::Customer.find(params[:id])

    respond_to do |format|
      if @self_service_customer.update_attributes(params[:self_service_customer])
        format.html { redirect_to(@self_service_customer, :notice => 'Customer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @self_service_customer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /self_service/customers/1
  # DELETE /self_service/customers/1.xml
  def destroy
    @self_service_customer = SelfService::Customer.find(params[:id])
    @self_service_customer.destroy

    respond_to do |format|
      format.html { redirect_to(self_service_customers_url) }
      format.xml  { head :ok }
    end
  end
end
