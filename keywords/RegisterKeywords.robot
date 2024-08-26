*** Settings ***
Library     SeleniumLibrary
Resource    CommonKeywords.robot

*** Keywords ***
user select button register to future skill platform
    CommonKeywords.Wait until element is ready then click element    xpath=//button[text()="สมัครสมาชิก"]

user register from
    CommonKeywords.Wait until element is ready then input text         name=email                                                 ${registerEmail}
    CommonKeywords.Wait until element is ready then input text         name=firstName                                             ${firstName}
    CommonKeywords.Wait until element is ready then input text         name=lastName                                              ${lastName}
    CommonKeywords.Wait until element is ready then input text         name=phoneNumber                                           ${phoneNumber}
    CommonKeywords.Wait until element is ready then input text         name=newPassword                                           ${newPassword}
    CommonKeywords.Wait until element is ready then input text         name=confirmPassword                                       ${confirmPassword}
    CommonKeywords.Wait until element is ready then select Checkbox    name=consent
    CommonKeywords.Wait until element is ready then click element      xpath=//button[@type="submit" and text()="สมัครสมาชิก"]