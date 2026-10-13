Feature: Comparação de Desempenho
  As a professor
  I want to ver um gráfico de comparação de desempenho entre turmas
  So that eu posso comparar turmas baseado em uma métrica

Scenario: Comparação usando a média como métrica
  Given eu estou na página "Comparação de Desempenho"
    And a disciplina "Engenharia de Software e Sistemas" está na lista de disciplinas
    And a turma "T0" de "2024.1" possui "8.4" de média e está na lista de turmas da disciplina "Engenharia de Software e Sistemas"
    And a turma "T0" de "2024.2" possui "7.8" de média e está na lista de turmas da disciplina "Engenharia de Software e Sistemas"
  When eu seleciono a disciplina "Engenharia de Software e Sistemas"
    And eu seleciono a turma "T0" de "2024.1"
    And eu seleciono a turma "T0" de "2024.2"
    And eu seleciono a métrica "Média"
    And eu solicito a geração do gráfico de comparação de desempenho
  Then eu consigo ver um gráfico de colunas com o título "Média" abaixo das seleções
    And o eixo X do gráfico possui as turmas "T0-24.1" e "T0-24.2"
    And o eixo Y do gráfico possui o valor "8.4" determinando a altura da coluna da turma "T0-24.1"
    And o eixo Y do gráfico possui o valor "7.8" determinando a altura da coluna da turma "T0-24.2"

Scenario: Comparação usando o número de alunos aprovados como métrica
  Given eu estou na página "Comparação de Desempenho"
    And a disciplina "Sinais e Sistemas para Computação" está na lista de disciplinas
    And a turma "T1" de "2026.1" possui "42" alunos aprovados e está na lista de turmas da disciplina "Sinais e Sistemas para Computação"
    And a turma "T2" de "2026.1" possui "37" alunos aprovados e está na lista de turmas da disciplina "Sinais e Sistemas para Computação"
    And a turma "T3" de "2026.1" possui "40" alunos aprovados e está na lista de turmas da disciplina "Sinais e Sistemas para Computação"
  When eu seleciono a disciplina "Sinais e Sistemas para Computação"
    And eu seleciono a turma "T1" de "2026.1"
    And eu seleciono a turma "T2" de "2026.1"
    And eu seleciono a turma "T3" de "2026.1"
    And eu seleciono a métrica "Número de alunos aprovados"
    And eu solicito a geração do gráfico de comparação de desempenho
  Then eu consigo ver um gráfico de colunas com o título "Número de alunos aprovados" abaixo das seleções
    And o eixo X do gráfico possui as turmas "T1-26.1", "T2-26.1" e "T3-26.1"
    And o eixo Y do gráfico possui o valor "42" determinando a altura da coluna da turma "T1-26.1"
    And o eixo Y do gráfico possui o valor "37" determinando a altura da coluna da turma "T2-26.1"
    And o eixo Y do gráfico possui o valor "40" determinando a altura da coluna da turma "T3-26.1"

Scenario: Comparação usando o número de alunos aprovados por nota como métrica
  Given eu estou na página "Comparação de Desempenho"
    And a disciplina "Teoria da Computação" está na lista de disciplinas
    And a turma "T1" de "2024.2" possui "5" alunos aprovados por nota e está na lista de turmas da disciplina "Teoria da Computação"
    And a turma "T2" de "2024.2" possui "2" alunos aprovados por nota e está na lista de turmas da disciplina "Teoria da Computação"
    And a turma "T1" de "2025.1" possui "1" alunos aprovados por nota e está na lista de turmas da disciplina "Teoria da Computação"
    And a turma "T2" de "2025.1" possui "7" alunos aprovados por nota e está na lista de turmas da disciplina "Teoria da Computação"
  When eu seleciono a disciplina "Teoria da Computação"
    And eu seleciono a turma "T1" de "2024.2"
    And eu seleciono a turma "T2" de "2024.2"
    And eu seleciono a turma "T1" de "2025.1"
    And eu seleciono a turma "T2" de "2025.1"
    And eu seleciono a métrica "Número de alunos aprovados por nota"
    And eu solicito a geração do gráfico de comparação de desempenho
  Then eu consigo ver um gráfico de colunas com o título "Número de alunos aprovados por nota" abaixo das seleções
    And o eixo X do gráfico possui as turmas "T1-24.2", "T2-24.2", "T1-25.1" e "T2-25.1"
    And o eixo Y do gráfico possui o valor "5" determinando a altura da coluna da turma "T1-24.2"
    And o eixo Y do gráfico possui o valor "2" determinando a altura da coluna da turma "T2-24.2"
    And o eixo Y do gráfico possui o valor "1" determinando a altura da coluna da turma "T1-25.1"
    And o eixo Y do gráfico possui o valor "7" determinando a altura da coluna da turma "T2-25.1"

Scenario: Comparação usando o número de alunos reprovados por nota como métrica
  Given eu estou na página "Comparação de Desempenho"
    And a disciplina "Fundamentos de Redes de Computadores" está na lista de disciplinas
    And a turma "T0" de "2025.2" possui "1" alunos reprovados por nota e está na lista de turmas da disciplina "Fundamentos de Redes de Computadores"
    And a turma "T2" de "2026.1" possui "3" alunos reprovados por nota e está na lista de turmas da disciplina "Fundamentos de Redes de Computadores"
  When eu seleciono a disciplina "Fundamentos de Redes de Computadores"
    And eu seleciono a turma "T0" de "2025.2"
    And eu seleciono a turma "T2" de "2026.1"
    And eu seleciono a métrica "Número de alunos reprovados por nota"
    And eu solicito a geração do gráfico de comparação de desempenho
  Then eu consigo ver um gráfico de colunas com o título "Número de alunos reprovados por nota" abaixo das seleções
    And o eixo X do gráfico possui as turmas "T0-25.2" e "T2-26.1"
    And o eixo Y do gráfico possui o valor "1" determinando a altura da coluna da turma "T0-25.2"
    And o eixo Y do gráfico possui o valor "3" determinando a altura da coluna da turma "T2-26.1"

Scenario: Comparação usando o número de alunos reprovados por falta como métrica
  Given eu estou na página "Comparação de Desempenho"
    And a disciplina "Complementos da Matemática para Computação" está na lista de disciplinas
    And a turma "T1" de "2026.1" possui "1" alunos reprovados por falta e está na lista de turmas da disciplina "Complementos da Matemática para Computação"
    And a turma "T2" de "2026.1" possui "3" alunos reprovados por falta e está na lista de turmas da disciplina "Complementos da Matemática para Computação"
  When eu seleciono a disciplina "Complementos da Matemática para Computação"
    And eu seleciono a turma "T1" de "2026.1"
    And eu seleciono a turma "T2" de "2026.1"
    And eu seleciono a métrica "Número de alunos reprovados por falta"
    And eu solicito a geração do gráfico de comparação de desempenho
  Then eu consigo ver um gráfico de colunas com o título "Número de alunos reprovados por falta" abaixo das seleções
    And o eixo X do gráfico possui as turmas "T1-26.1" e "T2-26.1"
    And o eixo Y do gráfico possui o valor "2" determinando a altura da coluna da turma "T1-26.1"
    And o eixo Y do gráfico possui o valor "0" determinando a altura da coluna da turma "T2-26.1"

Scenario: Tentativa de gerar comparação selecionando apenas uma turma
  Given eu estou na página "Comparação de Desempenho"
    And a disciplina "Banco de Dados" está na lista de disciplinas
    And a turma "T1" de "2025.1" possui "9.4" de média e está na lista de turmas da disciplina "Banco de Dados"
  When eu seleciono a disciplina "Banco de Dados"
    And eu seleciono a turma "T1" de "2025.1"
    And eu seleciono a métrica "Média"
    And eu solicito a geração do gráfico de comparação de desempenho
  Then o sistema não exibe o gráfico de comparação de desempenho
    And eu consigo ver uma mensagem de erro pedindo para selecionar ao menos 2 turmas

Scenario: Tentativa de gerar comparação sem selecionar uma disciplina
  Given eu estou na página "Comparação de Desempenho"
  When eu seleciono a métrica "Número de alunos aprovados"
    And eu solicito a geração do gráfico de comparação de desempenho
  Then o sistema não permite selecionar turmas
    And o sistema não exibe o gráfico de comparação de desempenho
    And eu consigo ver uma mensagem de erro pedindo para selecionar uma disciplina

Scenario: Tentativa de gerar comparação sem selecionar uma métrica
  Given eu estou na página "Comparação de Desempenho"
    And a disciplina "Engenharia de Software e Sistemas" está na lista de disciplinas
    And a turma "T1" de "2026.1" está na lista de turmas da disciplina "Engenharia de Software e Sistemas"
    And a turma "T2" de "2026.1" está na lista de turmas da disciplina "Engenharia de Software e Sistemas"
  When eu seleciono a disciplina "Engenharia de Software e Sistemas"
  And eu seleciono a turma "T1" de "2026.1"
  And eu seleciono a turma "T2" de "2026.1"
  And eu solicito a geração do gráfico de comparação de desempenho
  Then o sistema não exibe o gráfico de comparação de desempenho
  And eu consigo ver uma mensagem de erro pedindo para selecionar ao menos 1 métrica

Scenario: Comparação utilizando múltiplas métricas simultâneas
  Given eu estou na página "Comparação de Desempenho"
    And a disciplina "Sistemas Operacionais" está na lista de disciplinas
    And a turma "T1" de "2025.1" possui "8.1" de média, "58" alunos aprovados e está na lista de turmas da disciplina "Sistemas Operacionais"
    And a turma "T2" de "2025.2" possui "9.0" de média, "47" alunos aprovados e está na lista de turmas da disciplina "Sistemas Operacionais"
  When eu seleciono a disciplina "Sistemas Operacionais"
    And eu seleciono a turma "T1" de "2025.1"
    And eu seleciono a turma "T2" de "2025.2"
    And eu seleciono a métrica "Média"
    And eu seleciono a métrica "Número de aprovados"
    And eu solicito a geração do gráfico de comparação de desempenho
  Then eu consigo ver um gráfico de colunas com o título "Média" abaixo das seleções
    And eu consigo ver um gráfico de colunas com o título "Número de aprovados" abaixo do primeiro gráfico
    And o eixo X de ambos os gráficos possui as turmas "T1-25.1" e "T2-25.2"
    And o eixo Y do primeiro gráfico possui o valor "8.1" determinando a altura da coluna da turma "T1-25.1"
    And o eixo Y do primeiro gráfico possui o valor "9.0" determinando a altura da coluna da turma "T2-25.2"
    And o eixo Y do segundo gráfico possui o valor "58" determinando a altura da coluna da turma "T1-25.1"
    And o eixo Y do segundo gráfico possui o valor "47" determinando a altura da coluna da turma "T2-25.2"

Scenario: Comportamento ao tentar selecionar a mesma turma mais de uma vez
  Given eu estou na página "Comparação de Desempenho"
    And a disciplina "Lógica para Computação" está na lista de disciplinas
    And a turma "T1" de "2026.1" está na lista de turmas da disciplina "Lógica para Computação"
  When eu seleciono a disciplina "Lógica para Computação"
  And eu seleciono a turma "T1" de "2026.1"
  And eu seleciono novamente a turma "T1" de "2026.1"
  Then o sistema remove a turma "T1" de "2026.1" da seleção

Scenario: Comportamento ao tentar selecionar múltiplas disciplinas
  Given eu estou na página "Comparação de Desempenho"
    And a disciplina "Introdução à Programação" está na lista de disciplinas
    And a disciplina "Aprendizado de Máquina" está na lista de disciplinas
  When eu seleciono a disciplina "Introdução à Programação"
    And eu seleciono a disciplina "Aprendizado de Máquina"
  Then o sistema mantém a disciplina "Aprendizado de Máquina" selecionada
    And o sistema remove a seleção da disciplina "Introdução à Programação"

Scenario: Comportamento ao selecionar turma sem dados ou sem alunos cadastrados
  Given eu estou na página "Comparação de Desempenho"
    And a disciplina "Engenharia de Software e Sistemas" está na lista de disciplinas
    And a turma "T1" de "2026.1" possui notas cadastradas e está na lista de turmas da disciplina "Engenharia de Software e Sistemas"
    And a turma "T2" de "2026.1" não possui notas cadastradas e está na lista de turmas da disciplina "Engenharia de Software e Sistemas"
  When eu seleciono a disciplina "Engenharia de Software e Sistemas"
    And eu seleciono a turma "T1" de "2026.1"
    And eu seleciono a turma "T2" de "2026.2"
    And eu seleciono a métrica "Média"
    And eu solicito a geração do gráfico de comparação de desempenho
  Then eu consigo ver um gráfico de colunas com o título "Média" abaixo das seleções
    And o eixo X do gráfico possui as turmas "T1-26.1" e "T2-26.2"
    And o eixo Y do gráfico possui o valor "9.3" determinando a altura da coluna da turma "T1-26.1"
    And o eixo Y do gráfico não possui valor determinando a altura da coluna da turma "T2-26.2"
    And eu consigo ver uma mensagem de aviso afirmando que a turma "T2-26.2" não possui notas cadastradas
  
