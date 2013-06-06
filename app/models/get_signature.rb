class GetSignature < ActiveRecord::Base
  attr_accessible :by_date, :from
  belongs_to :uploads
end
