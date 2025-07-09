# frozen_string_literal: true

require_relative '../lib/binary_search'

RSpec.describe BinarySearch do
  describe 'pass an array with order numbers and a target number' do
    context 'the target number is in the list' do
      it 'return the position in the array' do
        binary_search = BinarySearch.new([1, 3, 5, 7, 9])
        expect(binary_search.search(3)).to eql(1)
      end
    end

    context "the target numben isn't in the list" do
      it 'return nil value' do
        binary_search = BinarySearch.new([1, 3, 5, 7, 9])
        expect(binary_search.search(-1)).to be_nil
      end
    end
  end
end
