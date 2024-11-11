*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter is set to 543, counter becomes 543
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Input Text    id=laskuri_value    543
    Click Button  Aseta
    Page Should Contain  nappia painettu 543 kertaa