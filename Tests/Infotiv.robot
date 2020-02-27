*** Settings ***
Documentation   This is some basic info about the whole test suite
Library         SeleniumLibrary

*** Test Cases ***
User can access infotiv.net
    [Documentation]                         This is some basic info about the test
    [Tags]                                  Test 1
    Open Browser                            about:blank         chrome
    Go To                                   http://rental5.infotiv.net
    Wait Until Page Contains                Infotiv Car Rental
    Input Text                             //*[@id="email"]   E-MAIL
    Close Browser

User is required to input start and end dates for the trip
    [Documentation]              This is some basic info about the test
    [Tags]                       Test 2
    Open Browser                 about:blank         chrome
    Go To                        http://rental5.infotiv.net
    Input Text                  //*[@id="start"]     When do you want to make your trip?
    List Selection Should Be     Earliest selectable date is today
    List Selection Should Be     one month ahead from today
    Close Browser

User is required to pick a car model                             #negativt testfall (ogiltig indata)
    [Documentation]          This is some basic info about the test
    [Tags]                   Test 4
    click button            //*[@id="continue"]
    Close Browser





