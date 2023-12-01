# frozen_string_literal: true

class CampaignFinancesController < ApplicationController
  before_action :set_categories_list

  def index
    @candidates = CampaignFinance.all
  end

  # Not neccessary b/c we only display CampaignFinance's in a table?
  # def show
  #   # find candidates by cycle and category
  #   @candidates = CampaignFinance.find_by(cycle: params[:cycle], category: params[:category])
  # end

  private

  def set_categories_list
    @categories_list = %w[candidate-loan contribution-total debts-owed
                          disbursements-total end-cash individual-total pac-total
                          receipts-total refund-total]
  end
end
