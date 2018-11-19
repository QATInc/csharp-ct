#encoding: utf-8
@Template @User @API @DEV
Feature: Testing an example API

# This is an example of an invalid scenario
@Valid @Smoke
Scenario: Request valid user information from the API

  Given my name is "Leanne Graham"
    When I query the API for my name
    Then I expect my name to be there

# This is an example of an invalid scenario
@Invalid
Scenario: Request invalid user information from the API

  Given my name is "Jim Johnson"
    When I query the API for my name
    Then I expect my name not to be there
	
# This is an example of a scenario outline, in which you can specify multiple examples		
@Examples
Scenario Outline: Request invalid user information from the API

  Given my name is <Name>
    When I query the API for my name
    Then I expect my name not to be there

  Examples:
	|Name|
	|Thomas Howell|
	|Ervin Howell|
	|Thomas Crump|
	|Clementine Bauch|
