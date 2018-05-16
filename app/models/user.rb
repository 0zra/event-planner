class User < ApplicationRecord
  validates :name, presence: true
  validates :name,  uniqueness: true, on: :save # ovo bas ne funkcionira
end
