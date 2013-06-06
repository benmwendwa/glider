class Upload < ActiveRecord::Base
  attr_accessible :description, :filepicker_url

  has_many :request_docs
  has_many :approvals
  has_one :get_signatures
  belongs_to :deals
end
