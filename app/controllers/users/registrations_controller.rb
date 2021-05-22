class Users::RegistrationsController < Devise::RegistrationsController
    after_action :assign_role, only:[:create]

    def assign_role
		if not current_user.nil?
			if current_user.email == "michele.vitulli@outlook.it"
  				current_user.set_admin
			end
  		end
	end

end