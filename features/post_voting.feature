Feature: Voting on posts
  In order to show whether I enjoy a post
  As someone who likes to judge things
  I need to be able to vote posts up or down

  Background: A post to be voted on
    Given There is a post written

  Scenario: Adding a vote
    When I am on a post page
    And I click the upvote button
    Then I should see that the vote has been upvoted once