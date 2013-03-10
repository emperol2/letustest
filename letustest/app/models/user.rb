class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  # Add nested attributes to projects        
  has_one :project, :class_name => 'Project', :foreign_key => 'id'
  accepts_nested_attributes_for :project
  # attr_accessor :project_attributes
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :project_attributes
  validates_presence_of :username
  # attr_accessible :title, :body

  def after_initialize
    self.build_project if self.project.nil?
  end

end
