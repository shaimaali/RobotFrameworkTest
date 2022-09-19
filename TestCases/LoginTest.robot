*** Settings ***
Resource  ../Resources/LoginPage.robot
*** Test Cases ***
Login ND page
    open link   http://nice-deer.net:9000/   chrome
    Login to nd     supervisor  111
    Select service type     Gold
    Select ticket source    Email
    Select ticket type      Lab
    Enter ticket sla    20
    Enter coordinator ola   5
    Enter doctor ola    5
    Press save



