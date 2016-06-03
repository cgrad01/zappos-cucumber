@category
Feature: Shop by category
  In order to find the right shoes for me
  As a user
  I want to select a specific category of shoe

Background:
  Given I am a User
  And I have chosen a gender

Scenario:
  When I navigate to the "Athletic" category
  Then I see the category title "Shoes, Athletic, Men | Shipped Free at Zappos"