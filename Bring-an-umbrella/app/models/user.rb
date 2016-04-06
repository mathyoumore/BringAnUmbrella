class User < ActiveRecord::Base
  
  validates :hours, :length => { :minimum => 1}

end
