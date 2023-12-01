# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

describe MyNewsItemsController do
  it 'calls the new method' do
    get :new, params: { representative_id: '3' }
  end

  # it 'calls the destroy method' do
  #   get :destroy
  # end

  # it 'calls the county method' do
  #   get :county, params: { std_fips_code: '001', state_symbol: 'CA' }
  # end
end
