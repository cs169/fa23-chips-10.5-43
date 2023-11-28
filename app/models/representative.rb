# frozen_string_literal: true

class Representative < ApplicationRecord
  has_many :news_items, dependent: :delete_all

  def self.civic_api_to_representative_params(rep_info)
    reps = []

    rep_info.officials.each_with_index do |official, index|
      ocdid_temp = ''
      title_temp = ''
      url =  official.photo_url || 'https://picsum.photos/id/378/200/300'
      if official.address
        street = official.address[0].line1 || ''
        city = official.address[0].city || ''
        state = official.address[0].state || ''
        zip = official.address[0].zip || ''
      end

      rep_info.offices.each do |office|
        if office.official_indices.include? index
          title_temp = office.name
          ocdid_temp = office.division_id
        end
      end

      rep = Representative.find_or_create_by!({ name: official.name, ocdid: ocdid_temp,
          title: title_temp, party: official.party, address_street: street, address_city: city, address_state: state, address_zip: zip, photo_url: url})
      reps.push(rep)
    end

    reps
  end
end
