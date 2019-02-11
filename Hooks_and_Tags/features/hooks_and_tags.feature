Feature: hooks and tags
  As a user I wish to see how cucumber uses tags and hooks

  Scenario: Check for a name
    Given I have a before hook in place with name details
    Then I can validate the information in the before hook

  @test2
  Scenario: an exampe of using tags
    Given I use a tag
    Then onlky this test will run