# frozen_string_literal: true

class Portfolio < ApplicationRecord
  after_initialize :set_defaults

  validates :title, :body, presence: true

  private

  def set_defaults
    self.main_image ||= 'http://placehold.it/600x400'
    self.thumb_image ||= 'http://placehold.it/350x200'
  end
end
