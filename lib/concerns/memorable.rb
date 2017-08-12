module Memorable
	module ClassMethods
		def reset_all
			self.all.clear 
		end

		def count  # you don't need to start them off with "self" as the file will naturally be EXTENDED not REQUIRED
			self.all.count
		end
	end

	module InstanceMethods 
		def initialize
  		self.class.all << self
		end
	end
end