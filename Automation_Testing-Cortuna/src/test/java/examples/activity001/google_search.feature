@smoke
Feature: Search in Google

#  Scenario: Karate Search
#    #* configure driver = {type:'chromedriver', executable: 'C:/Program Files/Google/Chrome/Application/chromedriver.exe'}
#    Given configure driver = {type:'chromedriver', executable: 'C:/Program Files/Google/Chrome/Application/chromedriver.exe'}
#    And driver 'https://www.google.com/'
#    And input('input[name=q]', 'karate dsl')
#    When click('input[name=btnI]')
#    Then waitForUrl('https://github.com/intuit/karate')

#  Scenario Outline: Facebook Search
#    #* configure driver = {type:'chromedriver', executable: 'C:/Program Files/Google/Chrome/Application/chromedriver.exe'}
#    Given configure driver = {type:'chromedriver', executable: 'C:/Program Files (x86)/Google/chromedriver.exe'}
#    And driver 'https://www.google.com/'
#    And input('input[name=q]', 'fb')
#    When click('input[name=btnI]')
#    Then waitForUrl('https://www.facebook.com/')

  Scenario Outline: Visit PUP homepage -<PUP Homepage>
    Given def step0 = 'Using Chrome as a browser'
    * configure driver = {type:'chromedriver', executable: 'C:/Program Files (x86)/Google/chromedriver.exe'}
    #* configure driver = {type: 'chrome'}
    And def step1 = 'Browser navigates to Google'
    * driver 'https://www.google.com/'
    And def step2 = 'User input text search'
    * input('input[name=q]', '<pup app>')
    When def step3 = 'User click button'
    * click('input[name=btnI]')
    Then def step4 = 'User expected result should display the website'
    * waitForUrl('https://sis1.pup.edu.ph/')

#  Scenario Outline: Visit PUP homepage -<PUP Homepage>
#    Given def step0 = 'Using Chrome as a browser'
#    * configure driver = {type:'chromedriver', executable: 'C:/Program Files (x86)/Google/chromedriver.exe'}
#    #* configure driver = {type: 'chrome'}
#    And def step1 = 'Browser navigates to Google'
#    * driver 'https://www.google.com/'
#    And def step2 = 'User input text search'
#    * input('input[name=q]', '<pup home>')
#    And def step3 = 'User click button'
#    * click('input[name=btnI]')
#    When def step3 = 'User click button'
#    * click('input[name=ThePUPOfficial]')
#    Then def step4 = 'User expected result should display the website'
#    * waitForUrl('https://twitter.com/ThePUPOfficial')

#  Scenario Outline: Using different searches - <name>
#    Given def step0 = 'Using Chrome as a browser'
#    * configure driver = {type:'chromedriver', executable: 'C:\Users\Daniella Llido\Downloads\chromedriver_win32\chromedriver.exe'}
#    #* configure driver = {type: 'chrome'}
#    And def step1 = 'Browser navigates to Google'
#    * driver 'https://www.google.com/'
#    And def step2 = 'User input text search'
#    * input('input[name=q]', '<value>')
#    When def step3 = 'User click button'
#    * click('input[name=btnI]')
#    Then def step4 = 'User expected result should display the website'
#    * waitForUrl('<expected>')


    Examples:
      | read ('google_search.csv')|