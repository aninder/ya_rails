class Employee < ActiveRecord::Base
  has_and_belongs_to_many :projects
  validates_uniqueness_of :name
end
