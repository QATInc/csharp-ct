Feature: Search google

@web
Scenario:
	Given we are on google.com
	When we search for github
	Then we will see github in the search results
	
	
@api
Scenario:
	Given we need api data
	When we query the api
	Then we will receive a valid response
		
@security-1
Scenario:
	Given we need api data
	When we query the api
	Then we will receive a valid response
	
@security-2
Scenario:
	Given we need api data
	When we query the api
	Then we will receive a valid response
