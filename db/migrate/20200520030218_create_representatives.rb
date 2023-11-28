# frozen_string_literal: true

class CreateRepresentatives < ActiveRecord::Migration[5.2]
  def up
    create_table :representatives do |t|
      t.string :name
      t.string :party
      t.string :address_street
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.string :photo_url
      t.timestamps null: false
    end
  end

  def down
    drop_table :representatives
  end
end
