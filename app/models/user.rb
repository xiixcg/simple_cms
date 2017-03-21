class User < ApplicationRecord
	self.table_name = "admin_users"

	#Short-hand of adding attribute to class
	attr_accessor :first_name

	#Long-hand of adding attribute to class
	def last_name
		@last_name
	end

	def last_name =(value)
		@last_name = value
	end
end
