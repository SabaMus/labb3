*** Settings ***
Documentation   This is some basic info about the whole test suite
Library         SeleniumLibrary
Resource        ../Resources/keywords.robot
Test Setup      Open Browser                            about:blank            ${BROWSER}
Test Teardown     Close Browser

*** Test Cases ***
User may create a user account
    [Documentation]                         This is some basic info about the test
    [Tags]                                  Test 1
    Go To                                    ${URL}
    Wait Until Page Contains                Infotiv Car Rental
    Input Text                             //*[@id="email"]   E-MAIL


User is required to input start and end dates for the trip
    [Documentation]              This is some basic info about the test
    [Tags]                       Test 2
    Go To                         ${URL}
    Input Text                    //*[@id="start"]     When do you want to make your trip?
    Click Button                  //*[@id="start"]
    Click Button                  //*[@id="end"]


User can access infotiv.net
    [Documentation]                 This is some basic information about the test
    [Tags]                          Test 3
    Go to                            ${URL}
    Wait Until Page Contains        Infotiv Car Rental
    Click Button                    //*[@id="continue"]
    Click Button                    //*[@id="bookQ7pass5"]


User is allow to click The About text
    [Documentation]                 This is some basic info about the test
    [Tags]                          Test 4
    Go to                           ${URL}
    Wait Until Page Contains        Infotiv Car Rental
    click element                   //*[@id="confirmPassword"]



User is allowed for Date Selection
    [Documentation]          This is some basic info about the test
    [Tags]                   Test 5
     Given browser is opend to select date
     When press the selected date
     Then press"Continue"to should reserve a car
