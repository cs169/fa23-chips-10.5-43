# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

describe LoginController do
  describe 'User login' do
    before do
      @fake_results = instance_double(User, id: 1)
    end

    it 'calls the login method' do
      get :login
    end

    it 'calls the logout method' do
      get :logout
      session[:current_user_id].should be_nil
    end
  end
end
