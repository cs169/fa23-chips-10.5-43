When('I add a representative {string} with ocdid {string}') do |name, address|
  # rep_info = {officials => {name: name, address: address}}
  # Representative.civic_api_to_representative_params(rep_info)
  pending
end

Given('the Representative {string} with ocdid {string} exists') do |name, address|
  title_temp = ''

  rep = Representative.find_or_create_by!({ name: name, ocdid: address, title: title_temp })
  rep.save
end

Then('I should see representative {string} once') do |name|
  pending
end

Then('I should see {int} representatives') do |num|
  rows = page.all("table tbody tr").count
  expect(rows).to eq num
end