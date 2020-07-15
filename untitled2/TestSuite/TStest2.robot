*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Elems.robot
Resource  ../Resources/Common.robot

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
    Sleep  8s
    Switch Window  NEW
    Title Should Be  Fleet Management | Lexmark Cloud Services
    Sleep  8s
    Click Element  ${ORG_SELECT}
    #Press Keys	TAB
    Click Element  ${ORG_INPUT}
    Sleep  8s
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
