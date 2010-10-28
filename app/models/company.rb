class Company < ActiveRecord::Base
  belongs_to :consort
  has_many :persons, :through =>  :employments
  has_many :addresses, :dependent => :destroy
  has_many :phones, :dependent => :destroy
  accepts_nested_attributes_for :addresses, :reject_if => lambda { |a| a[:add1].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :phones,:reject_if => lambda { |a| a[:number].blank? }, :allow_destroy => true
end
