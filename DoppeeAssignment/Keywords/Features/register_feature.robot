*** Settings ***
Resource    ../../keywords/import.robot

*** Keywords ***
Register with Username And Password
    [Arguments]             ${username}             ${password}             ${conf_password}
    toolbars.Click User Icon
    login.Click Register
    register.Input Username             ${username}
    register.Input Password             ${password}
    register.Input Confirm Password     ${conf_password}
    register.Click Sign Up
    register.Click OK
    register.Verify That Redirect To Home Page When Register Successfully