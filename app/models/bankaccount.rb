class Bankaccount < ActiveRecord::Base
	has_many :deposits
	has_many :withdraws
	has_many :lodgements
belongs_to :user
end
