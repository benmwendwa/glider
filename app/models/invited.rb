class Invited < ActiveRecord::Base
  attr_accessible :email, :full_names, :user_type
  belongs_to :deals
end
