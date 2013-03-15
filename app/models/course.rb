class Course < ActiveRecord::Base
  attr_accessible :coursedescription, :courseimage, :coursename, :coursetutor, :topics
  letsrate_rateable "quality"
  belongs_to :user
  validates :coursename, presence: true
  validates :coursetutor, presence:true
  validates  :coursedescription,presence: true
  validates  :topics,presence: true
end
