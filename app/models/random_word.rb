# frozen_string_literal: true

class RandomWord < ActiveRecord::Base
  # Generate random word
  def self.generate
    offset(rand(count)).first&.name
  end
end
