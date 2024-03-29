class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title, :locale

	default_scope :order => 'title'
	has_many :line_items
	has_many :orders, :through => :line_items

	before_destroy :ensure_not_referenced_by_any_line_item

	# ensure that there are no line items referencing this product
	def ensure_not_referenced_by_any_line_item
		if line_items.count.zero?
			return true
		else
			errors.add(:base, 'Line Items present' )
			return false
		end
	end

	validates :title, :description, :image_url, :presence => true
	validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
	validates :title, :uniqueness => true
	validates :title, :length => {
		:minimum => 10,
		:message => "product title length should be at least 10 char"
	}
	validates :image_url, :format => {
		:with => %r{\.(gif|jpg|png)$}i,
		:message => 'must be a URL for GIF, JPG or PNG image'
	}

end
