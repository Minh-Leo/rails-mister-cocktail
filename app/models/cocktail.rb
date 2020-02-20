# frozen_string_literal: true

class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :picture_url, presence: true
  validates :name, uniqueness: true, presence: true
end
