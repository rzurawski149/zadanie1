from selenium import webdriver

driver = webdriver.Firefox()
driver.get('https://duckduckgo.com/')
search = driver.find_element_by_id('search_form_input_homepage')
search.send_keys('the biggest python software house')
searchButton = driver.find_element_by_id('search_button_homepage')
searchButton.click()
assert "STX Next" in driver.page_source
