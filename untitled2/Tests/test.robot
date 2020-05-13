*** Settings ***
Library  SeleniumLibrary
Resource  Elements.robot
Resource  Common.robot

*** Keywords ***
Browse to Lexmark Cloud Fleet Managment
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window

Enter Username and Click Next
    input text  ${USERNAME}  ${EMAIL}
    Click Button  ${USERNAME_NEXT}

Enter Password and Login
    input text  ${LOGIN}  ${PASS}
    Click Button  ${PASS_NEXT}

Open Fleet Managemnt Page
    Wait Until Element Is Visible  ${FLEET_MG}
    Click Element  ${FLEET_MG}
    #Wait Until Page Contains  ${SPINNER}

Select Orginization
    ${PAUSE-10}
    Switch Window  NEW
    Title Should Be  Fleet Management | Lexmark Cloud Services
    ${PAUSE-10}
    Click Element  ${ORG_SELECT}
    #Press Keys	TAB
    Click Element  ${ORG_INPUT}
    ${PAUSE-5}
    input text  ${ORG_TYPE}  ${ORG}
    Press Keys	RETURN
    Close Browser

*** Test Cases ***
Open Browser To Cloud
    Browse to Lexmark Cloud Fleet Managment
    Enter Username and Click Next
    Enter Password and Login
    Open Fleet Managemnt Page
    Select Orginization
