# frozen_string_literal: true

require_relative '../lib/binary_search'

RSpec.describe BinarySearch do
  describe 'pass an array with order numbers and a target number' do
    context 'the target number is in the list' do
      it 'return the position in the array' do
        binary_search = BinarySearch.new.search([1, 3, 5, 7, 9], 3)
        expect(binary_search).to eql(1)
      end
    end

    context "the target numben isn't in the list" do
      it 'return nil value' do
        binary_search = BinarySearch.new.search([1, 3, 5, 7, 9], -1)
        expect(binary_search).to be_nil
      end
    end
  end

  describe 'how much steps required to found the right number' do
    context 'the steps required to find the number in the previous example' do
      it 'return a number equal to 3' do
        binary_search = BinarySearch.new
        binary_search.search([1, 3, 5, 7, 9], 3)
        expect(binary_search.steps).to eql(3)
      end
    end

    context "without list but we'll wanna now the total steps required" do
      it 'return a number of steps for a list with 128 elements' do
        calculated_steps = BinarySearch.calculate_steps(128)
        steps_expected = Math.log2(128)
        expect(calculated_steps).to eql(steps_expected)
        expect(calculated_steps.class).to be(Float)
      end

      it 'return a number of steps for a list with 256 elements' do
        calculated_steps = BinarySearch.calculate_steps(256)
        steps_expected = Math.log2(256)
        expect(calculated_steps).to eql(steps_expected)
        expect(calculated_steps.class).to be(Float)
      end
    end
  end
end
