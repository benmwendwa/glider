class Company < ActiveRecord::Base
  attr_accessible :company
  has_many :deals, :dependent => :destroy
end
