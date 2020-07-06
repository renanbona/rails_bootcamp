# frozen_string_literal: true

class Portfolio < ApplicationRecord
  include Placeholder
  after_initialize :set_defaults

  has_many :technologies

  validates :title, :body, presence: true

  private

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
