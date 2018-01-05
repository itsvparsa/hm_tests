Given(/^I am navigated to hotel management platform page$/) do
  visit("http://localhost:3003/")
end

And(/^click on login$/) do
  click_on("Login")
end

And(/^I enter username$/) do
  popup = page.driver.browser.window_handles.first
  page.driver.browser.switch_to.window(popup)
  find('#username').set('admin')
end

And(/^I enter password$/) do
  find('#password').set('password')
end

When(/^I click on login$/) do
  click_button("Login")
end

Then(/^I am able to see logout link$/) do
  sleep 2
  expect(page).to have_content("Logout")
end

And(/^I enter hotel name as (.*?)$/) do |hotel_name|
  find('#hotelName').set(hotel_name)
end

And(/^I enter address as (.*?)$/) do |address|
  find('#address').set(address)
end

And(/^I enter owner as (.*?)$/) do |owner|
  find('#owner').set(owner)
end

And(/^I enter phone number as (.*?)$/) do |phone_number|
  find('#phone').set(phone_number)
end

And(/^I enter email as (.*?)$/) do |email|
  find('#email').set(email)
end

And(/^I click on create$/) do
  click_button("Create")
end

Then(/^I delete the record$/) do
  sleep 1
  find(".hotelDelete").click
end

Then(/^row gets deleted$/) do
  sleep 1
  expect(page).not_to have_content("Holiday Inn")
end

Then(/^I see (.*?) created$/) do |hotel_name|
  expect(page).to have_content(hotel_name)
end



