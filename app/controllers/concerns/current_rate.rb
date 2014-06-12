module CurrentRate
	extend ActiveSupport::Concern

	private

		def set_rate
			@rate = Rate.find(session[:cart id])
		rescue ActiveRecord::RecordNotFound
			@rate = Rate.create
			session[:rate_id] =@rate.rate_id
		end
		
	end
	
# 	module InstanceMethods
		
# 	end
	
# 	def self.included(receiver)
# 		receiver.extend         ClassMethods
# 		receiver.send :include, InstanceMethods
# 	end
# end