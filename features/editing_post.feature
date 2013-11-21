Feature: Editing posts
  As a person who sometimes writes utter bollocks
  In order to fix the bollocks
  I need to be able to edit posts

  Scenario: Editing a post
    Given that I have written a post
    When I click on the edit link, update it and click submit
    Then I should see a confirmation message and my updated post

  Scenario: Deleting a post
    Given that I have written a post
    When I click on the delete link
    Then I should see a confirmation message and no longer see my post