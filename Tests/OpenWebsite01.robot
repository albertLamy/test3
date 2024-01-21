*** Settings ***

Library    RequestsLibrary
Library    Collections
Library    OperatingSystem
Library    SeleniumLibrary
Library    DateTime
Library    BuiltIn


*** Variables ***

${MyBrowser1}    edge
${MyBrowser2}    chrome
${MyBrowser3}    firefox


*** Keywords ***


*** Test Cases ***

Test01
    [Documentation]    Open the website
    [Tags]    TC01 Open URL with Chrome
    Open Browser    https://www.telemis.com/

Test02
    [Documentation]    Check the main page
    [Tags]    TC02 Check that the title exists on the page
    Wait Until Page Contains    Extending Human Life

Test03
    [Documentation]    Maximize the window of Internet browser
    [Tags]    TC03 Click the maximise icon button in the title bar
    Maximize Browser Window
    Sleep    5s

Test04
    [Documentation]    Menu Home
    [Tags]    TC04 Check that the menu Home exists on the page
    Element Should Be Visible    id=menu-725-1

Test05
    [Documentation]    Close Internet browser
    [Tags]    TC05 Click the close icon button
    Close Browser
    Sleep    5s
