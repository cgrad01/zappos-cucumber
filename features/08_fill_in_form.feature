@fill_in
Feature: Fill in and and submit notification form
  In order to be notified when my size comes back in stock
  As a user
  I should be able to fill in and then the form with my information

Background:
  Given I am a User
  And I navigated to the form page

Scenario:
  When I fill in the form
  And I click submit
  Then I see the page title "Zappos.com - Why, thanks!"