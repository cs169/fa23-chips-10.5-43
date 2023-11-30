# frozen_string_literal: true

require 'google/apis/civicinfo_v2'
require 'net/http'
require 'uri'

class SearchController < ApplicationController
  def search
    address = params[:address]
    service = Google::Apis::CivicinfoV2::CivicInfoService.new
    service.key = Rails.application.credentials[:GOOGLE_API_KEY]
    # service.key = Rails.application.credentials.dig(:development, :GOOGLE_API_KEY)
    result = service.representative_info_by_address(address: address)
    @representatives = Representative.civic_api_to_representative_params(result)

    render 'representatives/search'
  end

  def search_representatives
    cycle = params[:cycle]
    category = params[:category]

    uri = URI.parse("https://api.propublica.org/campaign-finance/v1/#{cycle}/candidates/leaders/#{category}.json")
    request = Net::HTTP::Get.new(uri)
    request["X-Api-Key"] = Rails.application.credentials[:PROPUBLICA_API_KEY]

    req_options = {
      use_ssl: uri.scheme == "https",
    }

    response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
      http.request(request)
    end

    @candidates = CampaignFinance.propublica_api_to_campaign_finances(response.body) #maybe just straight response?

    # Change when CampaignFinance view has been added
    # render 'representatives/search'
  end
end
