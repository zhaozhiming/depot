class Cart < ActiveRecord::Base
	has_many :line_items, :dependent => :destory
  # attr_accessible :title, :body
end
