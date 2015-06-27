require 'calabash-android/calabash_steps' #calabash's predefined steps

When(/^I click on "(.*)"$/) do |text|
  item = query("ListView TextView marked:'#{text}'").first

  item["text"].should == text
  touch item
end

Then(/^I see "(.*)" in detail$/) do |text|
  wait_for_elements_exist('TextView marked:"item_detail"')
  query('TextView marked:"item_detail"', :getText).first.should == text
end
