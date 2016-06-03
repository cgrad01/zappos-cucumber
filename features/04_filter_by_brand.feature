@brand
Feature: Filter by brand
  In order to view shoes from my favorite brand
  As a user
  I want to filter for a specific brand

Background:
  Given I am a User
  And I have chosen a category

Scenario:
  When I check the "Inov-8" brand
  Then I see the search header contains "inov-8"