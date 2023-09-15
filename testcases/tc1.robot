*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
postive login test
	open browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  edge
	input text      //input[@placeholder='Username']      Admin
	#input text      xpath://input[@placeholder='Password']      admin123
	#Click Element       xpath://button[normalize-space()='Login']
	#Click Element      xpath://*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/span/i
	#Click Link        xpath:////*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/ul/li[4]/a