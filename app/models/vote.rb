class Vote < ActiveRecord::Base

  belongs_to :user
  belongs_to :response
  belongs_to :question
# drop question_id column
end
