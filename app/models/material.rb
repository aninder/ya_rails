class Material < ActiveRecord::Base
  # has_and_belongs_to_many :projects
  has_many :materials_projects
  has_many :projects , :through => :materials_projects
  validates_uniqueness_of :name
end
