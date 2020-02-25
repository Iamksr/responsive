class Royalpass < ApplicationRecord
	validates :name, :rp, :pts, :rnk, presence:true
	# belongs_to :table1
end
