Given(/^That I am a new user and I want to sign up to the site$/) do 
	visit 'http://localhost:62402/'
end                                                                  

When(/^I press register link$/) do                                       
	click_link('Register')
end                                                                      
                                                                         
Then(/^the register screen should be shown$/) do                         
	page.has_field?('UserName')
	page.has_field?('Password')
	page.has_field?('ConfirmPassword')
end                                                                      
                                                                         
Then(/^I fill out the form and submit$/) do |table|                      
	values = table.rows_hash()

	fill_in('UserName', :with => values["UserName"])
	fill_in('Password', :with => values["Password"])
	fill_in('ConfirmPassword', :with => values["ConfirmPassword"])

	click_button('Register')
end                                                                      
                                                                         
Then(/^I should be directed to the home page logged in$/) do             
	page.has_content?('Hello NewUserA')
end                                                                      