class Cashflow < ActiveRecord::Base
	
	validates :date, :price, presence: true

	belongs_to :owner, :class_name => "User", :foreign_key => :user_id

	def editable_by?(user)
		user && user == owner
	end
	
end
