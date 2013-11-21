Given(/^that I have written a post$/) do
  visit '/posts/new'
  fill_in 'Title', with: 'What a Godly Post'
  fill_in 'Body', with: 'GUARGH!  KILLER SPIDER RATS WITH WINGS!  CRUSH!'
  click_button 'Save post'
  expect(current_path).to eq '/posts'
end

When(/^I click on the edit link, update it and click submit$/) do
  click_link 'Edit'
  fill_in 'Body', with: "Sorry about the earlier post, my brain was temporarily hijacked."
  click_button 'Save post'
  expect(current_path).to eq '/posts'
end

Then(/^I should see a confirmation message and my updated post$/) do
  page.should have_content 'Post successfully updated'
  page.should have_content 'Sorry about the earlier post'
end

When(/^I click on the delete link$/) do
  click_link 'Delete'
end

Then(/^I should see a confirmation message and no longer see my post$/) do
  page.should_not have_content "GUARGH!  KILLER SPIDER RATS WITH WINGS!"
  page.should have_content "Post nuked y'all"
end