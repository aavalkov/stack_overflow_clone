class User < ActiveRecord::Base

  has_many :questions
  has_many :responses
  has_secure_password

  validates :name, :presence => true
  validates :email, :presence => true
  validates_uniqueness_of :email


end
