*** Settings ***
Documentation       Tipos de váriaveis


*** Variable ***

&{PESSOAS}      nome= Everton   
...             sobrenome= Dutra    
...             idade= 38    
...             altura= 1,85
...             sexo= M
...             empresa= SIS

@{CELULAR}      Sansung     Motorola    Xiomi   Iphone      LG  

*** Test Case ***

Mostrar dicionário
    Log To Console      ${PESSOAS}
    Log To Console      ${PESSOAS.nome}
    Log To Console      ${PESSOAS.sobrenome}
    Log To Console      ${PESSOAS.idade}
    Log To Console      ${PESSOAS.altura}
    Log To Console      ${PESSOAS.sexo}
    Log To Console      ${PESSOAS.empresa}

Mostrar Lista
    Log To Console      ${CELULAR}
    Log To Console      ${CELULAR[0]}
    Log To Console      ${CELULAR[1]}
    Log To Console      ${CELULAR[2]}
    Log To Console      ${CELULAR[3]}
    Log To Console      ${CELULAR[4]}

