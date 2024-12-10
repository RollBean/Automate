*** Settings ***
Resource    import.robot

*** Keywords ***
Post login by api and return token
    [Arguments]    ${username}    ${password}    ${url}    ${path}    ${expected_status_code}    ${response_status}
    RequestsLibrary.Create Session    LoginSession    ${url}
    ${request_body}    BuiltIn.Create Dictionary    username=${username}    password=${password}
    ${response}    RequestsLibrary.POST On Session    LoginSession    ${path}    json=${request_body}    expected_status=${expected_status_code}
    BuiltIn.Should be equal     ${response.json()['status']}    ${response_status}
    ${token}   BuiltIn.Set Variable  ${response.json()['message']}
    Set Global Variable     ${token}
    RETURN    ${token}
    