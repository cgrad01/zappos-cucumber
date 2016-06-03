@multi_color
Feature: Select a shoe with multiple colors
  In order to pick a shoe with my favorite colors
  As a user
  I want to view a shoe with different color choices

Background:
  Given I am a User
  And I have filtered by brand

Scenario:
  When I select a shoe with multiple colors
  Then I see the title contains "F-Lite™ 235"
  Then I see I have more than one color choice