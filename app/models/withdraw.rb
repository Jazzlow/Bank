class Withdraw < ActiveRecord::Base
	belongs_to :bankaccount
	belongs_to :user
end
