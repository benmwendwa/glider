class RequestDoc < ActiveRecord::Base
  attr_accessible :by_date, :description, :from
  belongs_to :deals
  belongs_to :uploads
end
