class User < ApplicationRecord
  validates :name, presence: true
  validates :name,  uniqueness: true, on: :save # ovo bas ne funkcionira

  has_many :events, :foreign_key => :creator_id
  has_many :attendments, :foreign_key => :attendee_id
end
