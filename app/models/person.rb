class Person < ActiveRecord::Base
  has_many :addresses, :dependent => :destroy
  has_many :phones, :dependent => :destroy
  has_many :companies, :through =>  :employments
  accepts_nested_attributes_for :addresses, :reject_if => lambda { |a| a[:add1].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :phones, :reject_if => lambda { |a| a[:number].blank? }, :allow_destroy => true
end
