from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.edge.service import Service
serv_obj=Service("C:\Drivers\msedgedriver.exe")
driver= webdriver.Edge(None,serv_obj)

driver.get("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")
driver.maximize_window()
driver.find_element(By.NAME,"username").send_keys("Admin")
#driver.find_element(By.XPATH,"//input[@placeholder='Password']").send_keys("admin123")
#driver.find_element(By.XPATH,"//button[normalize-space()='Login']").click()