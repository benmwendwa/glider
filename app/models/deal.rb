class Deal < ActiveRecord::Base
  attr_accessible :name

  belongs_to :companies
  has_many :users, :through => :deal_members
  has_one :uploads
  has_many :approvals
  has_many :comments
  has_many :signatures
  has_many :request_docs
  has_many :inviteds
end
