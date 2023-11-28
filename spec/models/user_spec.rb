# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    described_class.new
  end

  it 'is valid with valid attributes' do
    user.provider = 1
    user.uid = '001'
    expect(user).to be_valid
  end

  it 'has name persistence' do
    user.first_name = 'Bill'
    user.last_name = 'Gates'
    expect(user.name).to eq('Bill Gates')
  end
end
