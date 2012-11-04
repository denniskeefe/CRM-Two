class CustomersController < ApplicationController
  before_filter :authenticate_user!
  # GET /customers
  # GET /customers.json

  def create  
    @customer = Customer.new(params[:customer])
    @customer.user_id = current_user.id

    if @customer.save
      flash[:notice] = "Successfully created customer."
        redirect_to(:action => 'index')
    else
      render('new')
    end
  end
  

  def index
    #instead of returning all customers we can filter by only showing 
    #customers belonging to the current_user
    @customers = current_user.customers
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customers }
    end
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
    @customer = Customer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer }
    end
  end

  # GET /customers/new
  # GET /customers/new.json
  def new
    @customer = Customer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer }
    end
  end

  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
  end

  # POST /customers
  # POST /customers.json
<<<<<<< HEAD
  def create
    @customer = Customer.new(params[:customer])  
    
    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render json: @customer, status: :created, location: @customer }
      else
        format.html { render action: "new" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end
=======
  # def create
  #   @customer = Customer.new(params[:customer])

  #   respond_to do |format|
  #     if @customer.save
  #       format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
  #       format.json { render json: @customer, status: :created, location: @customer }
  #     else
  #       format.html { render action: "new" }
  #       format.json { render json: @customer.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
>>>>>>> example

  # PUT /customers/1
  # PUT /customers/1.json
  def update
    @customer = Customer.find(params[:id])

    respond_to do |format|
      if @customer.update_attributes(params[:customer])
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end
end
