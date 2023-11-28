# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

describe UserController do
  it 'calls the counties action' do
    session[:current_user_id] = ''
    get :profile
  end
end
