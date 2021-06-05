class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

	has_many :reviews

	acts_as_user :roles => [:escaper, :admin]


   def self.from_omniauth(access_token)
    	data = access_token.info

    	user = User.where(email: data['email']).first
		# Uncomment the section below if you want users to be created if they don't exist
	     unless user
	         user = User.create( email: data['email'],
	            password: Devise.friendly_token[0,20]
	         )
	     end
		user
	end

	def is_escaper?
		return (self.roles_mask & 1) == 1
	end
	def set_escaper
		self.roles_mask = (self.roles_mask | 1)
		self.save
	end
	def unset_escaper
		self.roles_mask = 0
		self.save
	end
	def is_admin?
		return (self.roles_mask & 1) == 1
	end
	def set_admin
		self.roles_mask = (self.roles_mask | 1)
		self.save
	end
	def unset_admin
		self.roles_mask = 0
		self.save
	end
	
end
