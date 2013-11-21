Feature: Comments
  As someone with a deeply engaging blog
  In order to allow people to discuss my pearls of wisdom
  I need to allow people to add comments and to be able to remove them if inappropriate

  Background: A post to be commented on
    Given There is a post written

  Scenario: Adding a comment
    When I am on a post page
    And I click the add comment button and write and submit a comment
    Then I should be able to see my comment under the post

  Scenario: Deleting a comment
    When I have posted a comment
    And I click the Delete comment link
    Then the comment should have been deleted