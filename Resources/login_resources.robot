*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://demo.nopcommerce.com/
${BROWSER}  edge

*** Keywords ***
open my browser
	Open Browser    ${LOGIN URL}        ${BROWSER}
	Maximize Browser Window
close browser
	Close Browser
open login page
	go to   ${LOGIN URL}
click login
	Click Link    xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
input username
	[Arguments]    ${username}
	Input Text  id:Email        srinithigupta17@gmail.com
input password
	[Arguments]    ${password}
	Input Text      id:Password     Mittu@123
click on login button
	Click Element   xpath://button[normalize-space()='Log in']
click on logout button
	Click Link  xpath:////a[normalize-space()='Log out']
error message should be visible
	Page Should Contain    Login was unsuccessful

