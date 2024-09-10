*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Wait until element is ready then click element
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    3x    2s    click Element    ${locator}

Wait until element is ready then input text
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds    3x    2s    Input Text    ${locator}    ${text}

Wait until page contains element then verify text
    [Arguments]    ${expected_text}
    Wait Until Keyword Succeeds    3x    2s    Page Should Contain         ${expected_text}
