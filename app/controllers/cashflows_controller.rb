class CashflowsController < ApplicationController

	before_action :login_required, :only => [:new, :create, :edit, :update, :destroy]

	def index
		@cashflows = Cashflow.all
	end

	def show
		@cashflow = Cashflow.find(params[:id])
		
	end

	def new
		@cashflow = Cashflow.new
	end 

	def create
		@cashflow = current_user.cashflows.build(cashflow_params)
		if @cashflow.save
			redirect_to cashflows_path
		else 
			render :new
		end
	end

	def edit
		@cashflow = current_user.cashflows.find(params[:id])
	end 
	

	def update
		@cashflow = current_user.cashflows.find(params[:id])

		if @cashflow.update(cashflow_params)
			redirect_to cashflow_path(@cashflow)
		else
			render :edit
		end
	end

	def destroy
		@cashflow = current_user.cashflows.find(params[:id])
		@cashflow.destroy

		redirect_to cashflows_path
	end


private  
  
  def cashflow_params  
    params.require(:cashflow).permit(:date, :from_item, :to_item, :price, :description)  
  end  



end
