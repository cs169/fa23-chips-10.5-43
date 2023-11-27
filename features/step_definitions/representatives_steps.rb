Then('I should see {int} representatives in table') do |num|
  rows = page.all('table tbody tr').count
  expect(rows).to eq num
end

Then('I should see {int} representatives in the database') do |num|
  reps = Representative.all
  expect(reps.count).to eq num
end