*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot

Test Template    Invalid login

*** Test Cases ***          username            password
right user empty pass       srininthigupta17@gmail.com      ${empty}
empty user right pass        ${empty}       Mittu@123
wrong user right pass       srinithi        Mittu@123
right user wrong pass       srininthigupta17@gmail.com      miitu

*** Keywords ***
Invalid login
	[Arguments]    ${username}      ${password}
	open my browser
	click login
	input username      ${username}
	input password      ${password}
	click on login button
	error message should be visible

