When(/^I click the upvote button$/) do
  visit '/posts'
  click_link 'GStar'
  click_button '⬇'
end

Then(/^I should see that the vote has been upvoted once$/) do
  page.should have_content '1'
end