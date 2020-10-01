require 'rails_helper'

RSpec.describe RandomWord, type: :model do
  describe 'generate' do

    context "when no random words" do
      it 'returns nil if there are no random words' do
        expect(RandomWord.generate).to eq nil
      end
    end

    context "when random words are present" do
      let!(:random_words) { FactoryBot.create_list(:random_word, 5) }

      it 'returns random words' do
        expect(RandomWord.generate).not_to eq nil
      end
    end
  end
end
