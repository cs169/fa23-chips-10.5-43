# frozen_string_literal: true

class CampaignFinancesController < ApplicationController
  def index
    @candidates = CampaignFinance.all
  end

  # Not neccessary b/c we only display CampaignFinance's in a table?
  # def show
  #   # find candidates by cycle and category
  #   @candidates = CampaignFinance.find_by(cycle: params[:cycle], category: params[:category])
  # end
end
