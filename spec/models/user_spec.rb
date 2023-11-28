# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    described_class.new(
      first_name: 'Bill',
      last_name:  'Gates',
      provider:   'github'
    )
  end

  it 'is valid with valid attributes' do
    user.provider = 1
    user.uid = '001'
    expect(user).to be_valid
  end

  it 'has name persistence' do
    expect(user.name).to eq('Bill Gates')
  end

  it 'returns auth provider' do
    expect(user.auth_provider).to eq('Github')
  end
end
