@add_cart @no_size
Feature: Attempt to add a shoe to cart without size
  In order to pick a shoe that is in my size
  As a user
  I should be prevented from selecting a shoe with no size

Background:
  Given I am a User
  And I have chosen a shoe

Scenario:
  When I add the shoe to my cart
  Then I see the warning text "Please select a size"