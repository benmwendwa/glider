class Comment < ActiveRecord::Base
  attr_accessible :comments
  belongs_to :deals
end
