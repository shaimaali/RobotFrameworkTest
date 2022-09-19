*** Settings ***
Library  SeleniumLibrary
Variables  ../Libraries/LoginKeywords.py
*** Keywords ***
open link
    [Arguments]  ${Url}     ${BrowserName}
    open browser   ${Url}   ${BrowserName}

Login to nd
    [Arguments]  ${UserName}    ${Password}
    input text  ${userName_txt}    ${UserName}
    input text  ${password_txt}    ${Password}
    click button        ${login_btn}

Select service type
    [Arguments]  ${ServiceText}
    sleep    5
    click link    ${slaOla_Link}
    #click button    ${slaOlaSetting_frm}
    click element    ${serviseLevel_drb}
    input text    ${serveseLevelText_drb}    ${ServiceText}
    press keys    ${serveseLevelText_drb}     ENTER

Select ticket source
    [Arguments]    ${TicketSource}
    sleep    5
    click element    ${ticketSource_drb}
    input text      ${ticketSourceText_drb}     ${TicketSource}
    press keys    ${ticketSourceText_drb}   ENTER
Select ticket type
    [Arguments]    ${ticketType}
    sleep    5
    click element    ${ticketType_drb}
    input text      ${ticketTypeText_drb}     ${ticketType}
    press keys    ${ticketTypeText_drb}     ENTER
Select reply source
    [Arguments]    ${replySource}
    sleep    5
    click element    ${replySource_drb}
    input text      ${replySourceText_drb}     ${replySource}
    press keys    ${replySourceText_drb}     ENTER
Enter ticket sla
    [Arguments]    ${slaNumber}
    sleep    5
    input text      ${ticketSLA_txt}     ${slaNumber}
Enter coordinator ola
    [Arguments]    ${coOlaNumber}
    sleep    5
    input text      ${coordinatorOLA_txt}     ${coOlaNumber}
Enter doctor ola
    [Arguments]    ${docOlaNumber}
    sleep    5
    input text      ${doctorOLA_txt}     ${docOlaNumber}
Enter email to
    [Arguments]    ${emaiTO}
    sleep    5
    input text      ${emailTo_txt}     ${emaiTO}
Enter email cc
    [Arguments]    ${emailCC}
    sleep    5
    input text      ${emailCC_txt}     ${emailCC}
Enter escalate sla
    [Arguments]    ${escalateSLA}
    sleep    5
    input text      ${escalateSLA_txt}     ${escalateSLA}
Check system notification
    click element    ${sendSystemNotification_txt}
Check send email
    click element    ${sendEmail_txt}
Press save
    click button    ${save_Btn}
Press clear
    click button    ${clear_Btn}
