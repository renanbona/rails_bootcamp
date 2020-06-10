class Portfolio < ApplicationRecord
  validates :title, :subtitle, :body, presence: true
end
