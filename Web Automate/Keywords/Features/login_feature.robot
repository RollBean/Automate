*** Settings ***
Resource    ../../keywords/import.robot

*** Keywords ***
Login With Username And Password
    [Arguments]         ${username}         ${password}
    toolbars.Click User Icon
    login.Input Username    ${username}
    login.Input Password    ${password}
    login.Click Sign In
    login.Click OK
    login.Verify That Redirect To Home Page When Login Successfully