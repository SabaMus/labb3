*** Settings ***
Documentation   This is some basic info about the whole test suite
Library         SeleniumLibrary

*** Test Cases ***
User can access infotiv.net
    [Documentation]              This is some basic info about the test
    [Tags]                       Test 1
    Open Browser                 about:blank    chrome
    Go To                        http://rental5.infotiv.net
    click Button                 //*[@id="createUser"]
    Wait Until Page Contains     results for "selection page"
    Close Browser


User is required to input start and end dates for the trip
    [Documentation]              This is some basic info about the test
    [Tags]                       Test 2
    Go to Web Page
    click Button                 //*[@id="start"]
    List Selection Should Be     Earliest selectable date is today
    List Selection Should Be     one month ahead from today
    Close Browser

User can conduct another search
    [Documentation]           This is some basic info about the test
    [Tags]                    Test 3
    Go to Web Page
    Search for Product        Tesla Model S

User is required to pick a car model
    [Documentation]          This is some basic info about the test
    [Tags]                   Test 4
    click button            //*[@id="continue"]
    Close Browser
