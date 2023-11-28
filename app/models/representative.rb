# frozen_string_literal: true

class Representative < ApplicationRecord
  has_many :news_items, dependent: :delete_all

  def self.civic_api_to_representative_params(rep_info)
    reps = []
    rep_info.officials.each_with_index do |official, index|
      ocdid_temp = ''
      title_temp = ''
      url = official.photo_url || 'https://picsum.photos/id/378/200/300'
      address = pop_address(official)

      rep_info.offices.each do |office|
        if office.official_indices.include? index
          title_temp = office.name
          ocdid_temp = office.division_id
        end
      end

      rep = Representative.find_or_create_by!({ name:           official.name,
                                                ocdid:          ocdid_temp, title:          title_temp,
                                                party:          official.party, address_street: address[0],
                                                address_city:   address[1], address_state:  address[2],
                                                address_zip:    address[3], photo_url:      url })
      reps.push(rep)
    end

    reps
  end

  def self.pop_address(official)
    address = []
    if official.address
      address[0] = official.address[0].line1 || ''
      address[1] = official.address[0].city || ''
      address[2] = official.address[0].state || ''
      address[3] = official.address[0].zip || ''
    end
    address
  end
end
