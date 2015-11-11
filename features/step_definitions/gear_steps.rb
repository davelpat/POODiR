Given(/^a gearset has a chainring with (#{CAPTURE_NUMBER}) teeth and a cog with (#{CAPTURE_NUMBER}) teeth$/) do |chainring, cog|
  @gearset = Gear.new chainring, cog
end

Given(/^a wheel with a (#{CAPTURE_NUMBER}) inch rim and a (#{CAPTURE_NUMBER}) tire$/) do |rim_size, tire_size|
  @wheel = Wheel.new rim_size, tire_size
end

When(/^I ask for the gear ratio$/) do
  @calculated_gear_ratio = @gearset.ratio
end

Then(/^I should get a gear ratio of about (#{CAPTURE_NUMBER})$/) do |expected_gear_ratio|
  compare_with_expected_precision("gear ratio", expected_gear_ratio, @calculated_gear_ratio)
end

When(/^I ask for the gear inches$/) do
  @calculated_gear_inches = @gearset.ratio * @wheel.diameter
end

Then(/^I should get a gear inches of about (#{CAPTURE_NUMBER})$/) do |expected_gear_inches|
  compare_with_expected_precision("gear inches", expected_gear_inches, @calculated_gear_inches)
end
