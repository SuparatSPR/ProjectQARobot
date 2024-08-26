*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/RegisterKeywords.robot
Resource        ../keywords/HomePageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser

*** Test Cases ***
As a user, I want to Register future skill platform
    when user select button register to future skill platform
    Then future skill should display home page and display message as "สมัครสมาชิกกับเราวันนี้"
As a user, I register from
    when user register from
    Then future skill should display OTP and display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"
