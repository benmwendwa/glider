class Approval < ActiveRecord::Base
  attr_accessible :by_date, :description, :names
  belongs_to :deals
  belongs_to :uploads
end
