Given(/^my name is "?([^"]+)"?$/) do |pName|
  @pName = pName
  @name_class = @class_factory.name_operations
end

When(/^I query the API for my name$/) do
  @response = @name_class.get_response(@pName)
end

Then(/^I expect my name to be there$/) do
  @name_class.assert_valid_name(@response)
end

Then(/^I expect my name not to be there$/) do
  @name_class.assert_invalid_name(@response)
end
