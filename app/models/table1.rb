class Table1 < ApplicationRecord
	validates :name, :matches, :kd, :hd, :die, presence:true
	# has_many :royalpasses
end
