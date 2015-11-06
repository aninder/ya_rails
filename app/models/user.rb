class User < ActiveRecord::Base
  has_many :addresses, as: :addressable
  has_many :children, class_name:'User', foreign_key: 'parent_id'
  belongs_to :parent, class_name: 'User'
  has_many :grandchildren, through: :children, class_name: 'User', source: :children
  has_many :great_grandchildren, through: :grandchildren, class_name: 'User', source: :children
  has_many :friendships
  has_many :friends , through: :friendships
  # belongs_to :parent, class:'user',
  # has_many :sub_categories, class_name: "Category", foreign_key: "parent_id"
  # belongs_to :parent_category, class_name: "Category"
end


