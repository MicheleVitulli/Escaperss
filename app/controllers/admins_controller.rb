class AdminsController < ActionController::Base

	def index
		if current_user.is_admin?
			@users = User.all
		else
			render html: "Non sei autorizzato"
		end
		
	end

	def admin_user
		u = User.find(params[:id])
		u.set_admin
		redirect_to :admin_view
	end


	def unadmin_user
		u = User.find(params[:id])
		u.unset_admin
		redirect_to :admin_view
	end
end