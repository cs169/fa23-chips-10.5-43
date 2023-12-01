# frozen_string_literal: true

class CampaignFinance < ApplicationRecord
  def self.propublica_api_to_campaign_finances(api_response)
    candidates = []

    if api_response
      api_response['results'].each do |candidate|
        candidates.push(candidate)
      end
      # api_response.each_with_index do |official, index|
      #   #candidate = CampaignFinance.find_or_create_by!(official)
      #   candidates.push(candidate)
      # end
    end

    candidates
  end
end
