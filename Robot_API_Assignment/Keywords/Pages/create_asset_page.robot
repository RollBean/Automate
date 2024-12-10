*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Keywords ***
Post create asset and return response body
    [Arguments]    ${url}  ${path}  ${asset_id}    ${asset_name}    ${asset_type}    ${in_use}    ${response_status}
    ${header}    BuiltIn.Create Dictionary   token=${token}
    RequestsLibrary.Create Session    AssetSession    ${url}
    ${request_body}    BuiltIn.Create Dictionary   assetId=${asset_id}   assetName=${asset_name}    assetType=${asset_type}    inUse=${in_use}
    ${response}    RequestsLibrary.POST On Session     AssetSession    ${path}    headers=${header}   json=${request_body}
    BuiltIn.Should be equal     ${response.json()['status']}    ${response_status}
    ${request_asset}   BuiltIn.Set Variable  ${request_body}
    Set Global Variable     ${request_asset}
    RETURN    ${response.json()}