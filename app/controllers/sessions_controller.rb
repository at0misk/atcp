class SessionsController < ApplicationController
	def new
	end
	def create
		u = User.new
		u.evo_id = params[:evo_id]
		u.account_name = params[:account_name]
		if params[:agent_name]
			u.agent_name = params[:agent_name]
		end
		u.address = params[:address]
		u.phone = params[:phone]
		u.routing = params[:routing]
		u.account = params[:account]
		u.account_type = params[:type]
		u.pay_type = params[:pay_type]
		if verify_recaptcha(model: u) && u.save
			flash[:sent] = "Thanks for your submission!"
		else
			flash[:sent] = "Something went wrong, please try again."
		end
		redirect_to "/"
	end
	def dl
	end
end
