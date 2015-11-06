class Project < ActiveRecord::Base
  # has_and_belongs_to_many :materials
  has_many :materials_projects
  has_many :materials, :through => :materials_projects
  has_and_belongs_to_many :employees
  validates_uniqueness_of :name
end
