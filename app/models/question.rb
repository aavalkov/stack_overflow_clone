class Question < ActiveRecord::Base

  has_many :responses
  has_many :votes
  belongs_to :user

  validates :title, :presence => true
  validates :description, :presence => true

end
