*** Settings ***
Library    RequestsLibrary
Library    Collections

Resource    common.robot
Resource    ..//Keywords/Pages/create_asset_page.robot
Resource    ..//Keywords/Pages/delete_asset_page.robot
Resource    ..//Keywords/Pages/get_asset_page.robot
Resource    ..//Keywords/Pages/update_asset_page.robot

Variables    ..//Resource/Testdata/data.yaml