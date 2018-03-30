class Question < ApplicationRecord
  belongs_to :test

  validates :content,  presence: true
end
