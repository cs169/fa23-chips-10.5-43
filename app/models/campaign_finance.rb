# frozen_string_literal: true

class CampaignFinance < ApplicationRecord

  def self.propublica_api_to_campaign_finances(api_response)
    candidates = []
    
    api_response.results.each_with_index do |official, index|
      candidate = CampaignFinance.find_or_create_by!(official)
      candidates.push(candidate)
    end

    candidates
  end
end
