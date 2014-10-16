class CalsController < ApplicationController

	before_action :login_required, :only => [:new, :create, :edit, :update, :destroy]

	def index
		@cals = Cal.all
	end

	def show
		@cal = Cal.find(params[:id])
		
	end

	def new
		@cal = Cal.new
	end 

	def create
		@cal = Cal.new(cal_params)
		@cal.save
		redirect_to cals_path
	end

	def edit
		@cal = Cal.find(params[:id])
	end 
	

	def update
		@cal = Cal.find(params[:id])
		@cal.update(cal_params)

		redirect_to cal_path(@cal)
	end

	def destroy
		@cal = Cal.find(params[:id])
		@cal.destroy

		redirect_to cals_path
	end


private  
  
  def cal_params  
    params.require(:cal).permit(:date, :from, :to, :where_to_buy, :description, :price, :from_value, :to_value, :initail_value, :final_value)  
  end  




end
