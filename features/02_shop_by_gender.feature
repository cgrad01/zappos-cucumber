@gender
Feature: Shop by gender
  In order to find the right shoes for me
  As a user
  I want to choose shoes associated with my gender

Background:
  Given I am a User
  And I am on the homepage

Scenario:
  When I select the "Mens" link
  Then I want to see the title "Men's Shoes, Shoes For Men | Ships FREE at Zappos.com"