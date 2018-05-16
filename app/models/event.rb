class Event < ApplicationRecord
  belongs_to :creator, :class_name => "User"
  has_many :attendments, :foreign_key => :event_id
end
