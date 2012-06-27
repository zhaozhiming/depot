class PaymentType < ActiveRecord::Base
  attr_accessible :name

  def self.names
  	@payment_types = all.collect { |payment_type| I18n.t(".payment_type." + payment_type.name) }

  end
end
