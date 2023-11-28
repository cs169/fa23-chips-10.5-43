# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

describe NewsItem do
  describe 'finding news items by representative id' do
    it 'calls find_for' do
      described_class.find_for('111111')
    end
  end
end
