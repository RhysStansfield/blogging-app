Given(/^There is a post written$/) do
  visit '/posts/new'
  fill_in 'Title', with: 'GStar'
  fill_in 'Body', with: 'Hibbidy Bibbidy Trippity Trop'
  click_button 'Save post'
  page.should have_content 'GStar'
  expect(current_path).to eq '/posts'
end


Given(/^I am on a post page$/) do
  visit '/posts'
  click_link 'GStar'
  page.should have_content 'Hibbidy'
end

When(/^I click the add comment button and write and submit a comment$/) do
  fill_in 'Leave your comment yo!', with: 'Sweet post'
  click_button 'Submit comment'
end

Then(/^I should be able to see my comment under the post$/) do
  page.should have_content 'Sweet post'
end

When(/^I have posted a comment$/) do
  click_link 'GStar'
  fill_in 'Leave your comment yo!', with: 'Sweet post'
  click_button 'Submit comment'
end

When(/^I click the Delete comment link$/) do
 click_link 'Destroy Comment'
end

Then(/^the comment should have been deleted$/) do
  page.should_not have_content 'Sweet post'
end
