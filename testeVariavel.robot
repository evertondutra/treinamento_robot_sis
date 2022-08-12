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

&{ALUNO}        nome= Everton   nota1= 10       nota2= 9    nota3= 10

@{NOTAS}        5       10      10

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


Operações
    ${resultado}    Evaluate    2+2
    # Log         ${resultado}
    ${resultado}    Evaluate    2-2
    # Log         ${resultado}
    ${resultado}    Evaluate    2*2
    # Log         ${resultado}
    ${resultado}    Evaluate    2/2
    # Log         ${resultado}

Média do aluno pelo dicionário
    ${media}    Evaluate    (${ALUNO.nota1} + ${ALUNO.nota2} + ${ALUNO.nota3}) / 3
    Log To Console  ${media}

Média do aluno pela lista
    ${media}    Evaluate    (${NOTAS[0]} + ${NOTAS[1]} + ${NOTAS[2]}) / 3
    Log To Console  ${media}

Argumentos e retornos
    ${resultado}    Somar dois números  6   3
    Log to Console  ${resultado}

Argumentos embutidos
    ${resultado}    Somar os números 2 e 5
    Log To Console  ${resultado}

Subtraindo
    ${resultado}    Somar dois números  9   3
    Log to Console  ${resultado}

Dividindo
    ${resultado}    Somar dois números  6   3
    Log to Console  ${resultado}

Multiplicando
    ${resultado}    Somar dois números  3   3
    Log to Console  ${resultado}


*** Keywords ***

Somar dois números
    [Arguments]     ${NUM1}     ${NUM2}
    ${SOMA}     Evaluate    ${NUM1} + ${NUM2}
    [Return]  ${SOMA}

Somar os números ${NUM1} e ${NUM2}
    ${SOMA}     Evaluate    ${NUM1} + ${NUM2}
    [Return]    ${SOMA}


Subtrair dois números
    [Arguments]     ${NUM1}     ${NUM2}
    ${SUB}     Evaluate    ${NUM1} - ${NUM2}
    [Return]  ${SUB}

Dividir dois números
    [Arguments]     ${NUM1}     ${NUM2}
    ${DIV}     Evaluate    ${NUM1} / ${NUM2}
    [Return]  ${DIV}

Multiplicar dois números
    [Arguments]     ${NUM1}     ${NUM2}
    ${MULT}     Evaluate    ${NUM1} * ${NUM2}
    [Return]  ${MULT}
