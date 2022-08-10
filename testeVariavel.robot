*** Settings ***
Documentation       Tipos de váriaveis


*** Variable ***

&{PESSOAS}      nome= Everton   
...             sobrenome= Dutra    
...             idade= 38    
...             altura= 1,85
...             sexo= M
...             empresa= SIS

*** Test Case ***

Mostrar dicionário
    Log To Console      ${PESSOAS.nome}
    Log To Console      ${PESSOAS}
