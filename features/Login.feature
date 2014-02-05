Feature: SignupLoginFeature
	In order to login I need to register on the site.
	I want to be able to fill in the registration form
	Sign up, login, logout and log back in again.

Scenario: Sign Up
	Given That I am a new user and I want to sign up to the site
	When I press register link
	Then the register screen should be shown
	Then I fill out the form and submit
	| Field           | Value     |
	| UserName        | NewUserA |
	| Password        | password1 |
	| ConfirmPassword | password1 |
	And I should be directed to the home page logged in