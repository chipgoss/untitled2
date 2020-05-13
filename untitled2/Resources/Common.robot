*** Variables ***

#Logins
${Long_Wait} =  10 seconds
${URL}  https://idp.dev.cloud.onelxk.co/auth/users/login
${Browser}  Chrome
${USERNAME}  id:user_email
${EMAIL}  chip.goss@lexmark.com

#Orgs
${ORG}  Development Org

#Actions
${PAUSE-2}  Sleep  2
${PAUSE-5}  Sleep  5
${PAUSE-10}  Sleep  10