class Signature < ActiveRecord::Base
  attr_accessible :signature, :signedBy
  belongs_to :deals
end
