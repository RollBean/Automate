*** Settings ***
Resource    ${CURDIR}/../Keywords/import.robot

*** Test Cases ***
Verify login with invalid username
    common.Post login by api and return token    ${login.invalid_username}    ${login.password}    ${login.url}    ${login.path}  
    ...   ${login.status_code_fail}    ${login.status_fail}  

Verify create new asset success
    common.Post login by api and return token    ${login.username}    ${login.password}    ${login.url}    ${login.path}   
    ...   ${login.status_code_success}    ${login.status_success}
    create_asset_page.Post create asset and return response body    ${login.url}    ${asset.path}    ${asset.asset_id}    ${asset.asset_name}  
    ...   ${asset.asset_type}    ${asset.in_use}     ${asset.status}
    get_asset_page.Get asset that created asset    ${login.url}    ${asset.path}
    get_asset_page.Verify asset that created asset    ${request_asset.assetId}    ${request_asset.assetName}    ${request_asset.assetType}    ${request_asset.inUse}

Verify update data new asset
    common.Post login by api and return token    ${login.username}    ${login.password}    ${login.url}    ${login.path}   
    ...   ${login.status_code_success}    ${login.status_success}
    update_asset_page.Put asset and return response body    ${login.url}    ${asset.path}    ${asset.asset_id}    ${asset.asset_name_update}  
    ...   ${asset.asset_type}    ${asset.in_use}     ${asset.status}
    get_asset_page.Get asset that created asset  ${login.url}    ${asset.path}
    get_asset_page.Verify asset that created asset   ${update_asset.assetId}   ${update_asset.assetName}   ${update_asset.assetType}   ${update_asset.inUse}

Verify delete data new asset
    common.Post login by api and return token    ${login.username}    ${login.password}    ${login.url}    ${login.path}   
    ...   ${login.status_code_success}    ${login.status_success}
    delete_asset_page.Delete api and return response body    ${login.url}    ${asset.path}    ${asset.asset_id}    ${asset.status}
    delete_asset_page.Check get asset that asset has been deleted    ${asset.asset_id}