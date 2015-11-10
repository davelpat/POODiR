Given(/^a gearset has a chainring with (\d+) teeth and a cog with (\d+) teeth$/) do |chainring, cog|
  @gearset = make_gearset chainring, cog
end

When(/^I ask for the gear ratio$/) do
  @calculated_gear_ratio = @gearset.ratio
end

Then(/^I should get a gear ratio of about (\d+.\d+)$/) do |gear_ratio|
  expected_precision = get_precision gear_ratio
  expected_gear_ratio = gear_ratio.to_f
  rounded_gear_ratio = @calculated_gear_ratio.round(expected_precision)
  assert_equal expected_gear_ratio, rounded_gear_ratio,
    "Expected gear ratio of #{expected_gear_ratio}, but got #{rounded_gear_ratio}"
end