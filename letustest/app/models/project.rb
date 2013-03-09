class Project < ActiveRecord::Base
  
  attr_accessible :info, :name, :url, :user_id
  belongs_to :user, :foreign_key => 'user_id' , :primary_key => 'id'
  
  
end
