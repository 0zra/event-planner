class User < ApplicationRecord
  validates :name, presence: true
  validates :name,  uniqueness: true, on: :save # ovo bas ne funkcionira

  has_many :events, :foreign_key => :creator_id
end
