*** Settings ***
Documentation       Robot to solve test PLaywright

Library             RPA.Browser.Playwright


*** Tasks ***
Complete the challenge
    Open some browser
    Fill the form
    Collect the result


*** Keywords ***
Open some browser
    New Browser
    New Page    https://clinica.thiagoandradevieira.com/paciente/register

Fill the form
    Fill Text       css=input#nome      "Gabriel Lopes Machado"
    Fill Text       css=input#cpf       "12332123100"
    Fill Text       css=input#email     "gabriel.machado@araujo.com.br"
    Click           css=input#termos

Collect the result
    Take Screenshot  %{ROBOT_ARTIFACTS}${/}result.png       selector=css=div.login-content
    Close Browser
