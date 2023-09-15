*** Settings ***
Library    SeleniumLibrary
*** Variables ***

*** Test Cases ***
logintest
	Open Browser        https://demo.nopcommerce.com/       edge
	Click Link      xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
	Input Text      id:Email        srinithigupta17@gmail.com
	Input Text      id:Password     Mittu@123
	Click Element       xpath://button[normalize-space()='Log in']
	Close Browser