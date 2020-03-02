*** Settings ***
Library         SeleniumLibrary
*** Variables ***
${BROWSER} =     chrome
${URL} =      http://rental5.infotiv.net

*** Keywords ***
Begain Web Test
    Open Browser        about:blank chrome

Go to Web Page
    Load Page
    Verify Page Loaded
Load Page
        Go to                http://rental5.infotiv.net
Verify Page Loaded
       Wait Until Page Contains                Infotiv Car Rental
List Selection Should Be
    First name
    Last name
    Phonenumber
    E-mail
    Confirm E-mail
    Password
    Confirm Password
First name
    Input Text              //*[@id="name"]                 first name
Last name
     Input Text             //*[@id="last"]                 last name
Phonenumber
    Input Text              //*[@id="phone"]                phonenumber
E-mail
    Input Text              //*[@id="emailCreate"]          E-mail
Confirm E-mail
    Input Text              //*[@id="confirmEmail"]         Confirm E-mail
Password
    Input Text              //*[@id="passwordCreate"]       Password
Confirm Password
    Input Text              //*[@id="confirmPassword"]      Confirm Password

End Web Test
    Close Browser

browser is opend to select date
    Go to Web Page
    Element Should Be Visible     //*[@id="questionText"]

press the selected date
     Click Element                //*[@id="start"]
     Click Element               //*[@id="start"]

press"Continue"to should reserve a car
    Click Button                 //*[@id="continue"]

