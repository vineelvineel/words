# frozen_string_literal: true

class WordsController < ApplicationController
  def index
    @random_word = RandomWord.generate
  end
end
