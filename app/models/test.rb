class Test < ApplicationRecord
  belongs_to :user
  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions

  validates :user_id,     presence: true
  validates :name,        presence: true
  validates :description, presence: true
end
