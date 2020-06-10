# frozen_string_literal: true

class Topic < ApplicationRecord
  has_many :blogs

  validates :title, presence: true
end
