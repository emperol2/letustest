class Project < ActiveRecord::Base
  
  attr_accessible :info, :name, :url
  belongs_to :user, :foreign_key => 'user_id'
    
end
