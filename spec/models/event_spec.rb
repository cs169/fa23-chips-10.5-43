# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

describe Event do
  describe 'retrieving county names by id' do
    it 'calls county_names_by_id' do
      county = County.new(name: 'Random County', state: State.first)
      event = described_class.new(start_time: Time.zone.now, end_time: Time.zone.now + 1.hour, county: county)
      event.county_names_by_id
    end
  end
end
