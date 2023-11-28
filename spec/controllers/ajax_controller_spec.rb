# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

describe AjaxController do
  before do
    @fake_results = instance_double(State, counties: [''])
  end

  it 'calls the counties action' do
    allow(State).to receive(:find_by).and_return(@fake_results)
    get :counties, params: { state_symbol: 'CA' }
  end
end
