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