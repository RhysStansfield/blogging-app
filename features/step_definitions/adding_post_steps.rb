Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^I click "(.*?)"$/) do |link|
  click_link link
  expect(current_path).to eq '/posts'
end

Given(/^I follow "(.*?)"$/) do |link|
  click_link link
  expect(current_path).to eq '/posts/new'
end

When(/^I write and submit a post$/) do
  fill_in 'Title', with: 'Heeby Jeebies'
  fill_in 'Body', with: 'ZOOoOooOOOOOmmmmmmmggg!'
  click_button 'Save post'
end

Then(/^I should be on the posts page$/) do
  expect(current_path).to eq '/posts'
end

Then(/^I should see my post and a confirmation message$/) do
  page.should have_content 'Heeby Jeebies'
  page.should have_content 'Post saved'
end

Given(/^I visit the new posts page$/) do
  visit '/posts/new'
end

When(/^I don't fill in the title and press submit$/) do
  fill_in 'Body', with: 'No title here!'
  click_button 'Save post'
end

Then(/^I should still be on the new posts page$/) do
  expect(current_path).to eq '/posts'
end

Then(/^see an error message$/) do
  page.should have_content 'Please enter a title'
end