class Response < ActiveRecord::Base

  belongs_to :question
  has_many :votes
  belongs_to :user

  validates :description, :presence => true

end
