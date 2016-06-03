@not_my_size
Feature: View an interest form when my size is not available
  In order to be notified when my size comes back in stock
  As a user
  I should be able to view a form where I can submit my information

Background:
  Given I am a User
  And I have chosen a shoe

Scenario:
  When I click the "don't see your size" link
  Then I see the form page title "Zappos.com - Notify Me!"