*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Keywords ***
Delete api and return response body
    [Arguments]    ${url}    ${path}    ${asset_id}    ${response_status}
    ${header}    BuiltIn.Create Dictionary   token=${token}
    RequestsLibrary.Create Session    deleteAssetSession    ${url}
    ${response}    RequestsLibrary.DELETE On Session     deleteAssetSession    /${path}/${asset_id}    headers=${header}
    BuiltIn.Should be equal     ${response.json()['status']}    ${response_status}

Check get asset that asset has been deleted
    [Arguments]   ${unexpected_asset_id}
    ${assets}   get_asset_page.Get asset that created asset    ${login.url}   ${asset.path}
    FOR    ${asset}    IN    @{assets}
        ${asset_id}=    Collections.Get From Dictionary    ${asset}    assetId
        Should Not Be Equal As Strings    ${asset_id}    ${unexpected_asset_id}
    END
    