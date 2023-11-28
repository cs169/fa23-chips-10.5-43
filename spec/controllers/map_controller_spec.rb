# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

describe MapController do
  it 'calls the index method' do
    get :index
  end

  it 'calls the county method' do
    get :county, params: { std_fips_code: '001', state_symbol: 'CA' }
  end
end
