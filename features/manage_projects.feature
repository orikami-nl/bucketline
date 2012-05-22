Feature: Place a new project
	In order to get things done
	As an admin
	I want to manage the projects

	Background:
		Given I am logged in as an admin

	Scenario: Place new project
		When I go to the calendar page
		And I follow "Plaats nieuw project"
		And I fill in the form with a project and an item
		And I press "Project en items opslaan"
		Then I should see my project

	Scenario: Deleting the project also removes contributions
		Given there is a project with an item
		When I go to the dashboard page
		And I provide 1 item
		And I delete the project
		And I follow "Mijn profiel"
		Then I should not see "Mijn item"

	Scenario: Admin refuses contribution
		Given there is a project with an item
		When I go to the admin contributions dashboard
		Then I should see "Mijn item"		
		When I follow "Bijdrage weigeren"
		Then I should not see "Mijn item"		