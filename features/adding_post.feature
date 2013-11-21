Feature: Creating posts
  As a person with a lot to say
  In order to share my fascinating insights
  I need to be able to create blog posts

  Scenario: Adding a post
    Given I am on the homepage
    And I click "My Biggidedy Bloggededy"
    And I follow "New post"
    When I write and submit a post
    Then I should be on the posts page
    And I should see my post and a confirmation message

  Scenario: Validating a post
    Given I visit the new posts page
    When I don't fill in the title and press submit
    Then I should still be on the new posts page
    And see an error message