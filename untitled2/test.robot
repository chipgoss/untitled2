*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${SPINNER} =  class:busy-spinner-inner
${Long_Wait} =  10 seconds
${URL}  https://idp.dev.cloud.onelxk.co/auth/users/login
${Browser}  Chrome
${USERNAME}  id:user_email
${EMAIL}  chip.goss@lexmark.com
${USERNAME_NEXT}   id:btn-email-next
${LOGIN}  id:user_password
${PASS}  !Qazxsw2
${PASS_NEXT}   id:btn-email-login
${FLEET_MG}  xpath://*[contains(text(), "Fleet Management")]
${ORG_SELECT}  id:selectOrgRadioIndividual_radio_input
${ORG_INPUT}  id:organizationSelect
${ORG_TYPE}  id:organizationSelect_Input
${ACCT-MENU}  xpath://*[@id="header"]/div/header/cui-header-user-menu
${ANALYTICS}  xpath://*[@id="dashboard-widget-7"]/div[1]/div[2]/lib-application-card/lxk-card-wrapper/div/div/div/div[3]
${ORG}  Development Org

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
    Sleep  10
    Switch Window  NEW
    Title Should Be  Fleet Management | Lexmark Cloud Services
    #Click Element  ${ACCT-MENU}
    #Set Selenium Implicit Wait  ${Long_Wait}
    #Title Should Be  Fleet Management | Lexmark Cloud Services 2.3.0
    #Wait Until Page Contains  ${ORG_SELECT}
    #Set Focus To Element  ${ORG_SELECT}
    #Click Element  ${ANALYTICS}

    Sleep  10
    Click Element  ${ORG_SELECT}
    #Press Keys	TAB
    Click Element  ${ORG_INPUT}
    Sleep  5
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
