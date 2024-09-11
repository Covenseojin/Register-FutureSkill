*** Settings ***
Library    SeleniumLibrary    run_on_failure=Capture Page Screenshot
Resource    ../keywords/CommonKeywords.robot
Resource    ../keywords/RegisterPageKeyword.robot
Resource    ../keywords/HomePageKeywords.robot
Variables   ../resources/config/config.yaml    
Variables   ../resources/testdata/testdata.yaml    
Suite Setup    Open Browser    ${baseUrl}    chrome
Suite Teardown    Close Browser


*** Test Cases ***
As a user, I want to Register success with valid credential
    When user register future skill platform with ${email} ${firstName} ${lastName} ${phoneNumber} ${newPassword} ${confirmPassword}
    Then future skill should display home page and display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
    [Teardown]    user close browser

