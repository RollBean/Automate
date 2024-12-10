*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Keywords ***
Get asset that created asset
    [Arguments]    ${url}   ${path}
    ${header}    BuiltIn.Create Dictionary   token=${token}
    RequestsLibrary.Create Session    GetAssetSession    ${url}
    ${response}    RequestsLibrary.GET On Session    GetAssetSession    /${path}    headers=${header}
    Set Global Variable     ${get_assets}   ${response} 
    RETURN    ${response.json()} 

Verify asset that created asset
    [Arguments]     ${asset_id}    ${asset_name}    ${asset_type}    ${in_use}
    BuiltIn.Should be equal     ${asset_id}     ${get_assets.json()[-1]['assetId']}
    BuiltIn.Should be equal     ${asset_name}     ${get_assets.json()[-1]['assetName']}
    BuiltIn.Should Be Equal As Strings      ${asset_type}     ${get_assets.json()[-1]['assetType']}
    BuiltIn.Should be equal     ${in_use}     ${get_assets.json()[-1]['inUse']}