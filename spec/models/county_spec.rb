# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

RSpec.describe County, type: :model do
  subject(:state) do
    State.new(
      name:         'California',
      symbol:       'CA',
      fips_code:    2,
      is_territory: 1,
      lat_min:      1.0,
      lat_max:      1.0,
      long_min:     1.0,
      long_max:     1.0
    )
  end

  let(:county) do
    described_class.new(
      name:       'Costa County',
      fips_code:  1,
      fips_class: 'NA'
    )
  end

  it 'is valid with valid attributes' do
    county.state = state
    expect(county).to be_valid
  end
end