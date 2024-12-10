*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     OperatingSystem
Library     String
Library     BuiltIn

*** Keywords ***
Generate Random Unique Number
    ${numbers}=    Create List    1    2    3    4    5    6    7    8    9    10
    ${random_numbers}=    Create List

    FOR    ${i}    IN RANGE    4
        ${length}=    Get Length    ${numbers}
        ${random_index}=    Generate Random Number    0    ${length - 1}
        ${random_number}=    Get From List    ${numbers}    ${random_index}
        Append To List    ${random_numbers}    ${random_number}
        Remove From List    ${numbers}    ${random_index}
    END
    RETURN    ${random_numbers}

Generate Random Number
    [Arguments]    ${min}    ${max}
    ${number}=    Evaluate    random.randint(${min}, ${max})
    RETURN    ${number}

Join List Into String
    [Arguments]    ${list}    ${separator}
    ${joined_string}=    Evaluate    '${separator}'.join(${list})
    RETURN    ${joined_string}

Generate Random Email
    ${random_numbers}=    Generate Random Unique Number
    ${random_number_string}=    Join List Into String    ${random_numbers}    _
    ${random_email}=    Set Variable    example${random_number_string}@gmail.com
    RETURN    ${random_email}

Verify Text
    [Arguments]   ${locator}    ${expected}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    
    SeleniumLibrary.Element Text Should Be    ${locator}    ${expected}