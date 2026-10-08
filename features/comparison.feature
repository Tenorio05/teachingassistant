Feature: Comparação de Desempenho
  As a professor
  I want to ver um gráfico de desempenho entre turmas
  So that eu posso comparar turmas baseado em uma métrica

Scenario: Usando a média dos alunos como métrica
  Given Eu estou na página de comparação de desempenho
  When Eu seleciono a disciplina "Engenharia de Software e Sistemas"
  And Eu seleciono a turma "T0" de "2024.1"
  And Eu seleciono a turma "T0" de "2024.2"
  And Eu seleciono a métrica "Média"
  Then Eu consigo ver um gráfico mostrando "8.4" para a turma "T0-24.1" e "7.8" para a turma "T0-24.2"

Scenario: Usando o número de alunos aprovados como métrica
  Given Eu estou na página de comparação de desempenho
  When Eu seleciono a disciplina "Sinais e Sistemas para Computação"
  And Eu seleciono as turmas "T1", "T2" e "T3" de "2026.1"
  And Eu seleciono a métrica "Número de alunos aprovados"
  Then Eu consigo ver um gráfico mostrando "42" para a turma "T1-26.1", "37" para a turma "T2-26.1" e "40" para a turma "T3-26.1"

Scenario: Usando o número de alunos aprovados por nota como métrica
  Given Eu estou na página de comparação de desempenho
  When Eu seleciono a disciplina "Teoria da Computação"
  And Eu seleciono as turmas "T1" e "T2" de "2024.2"
  And Eu seleciono as turmas "T1" e "T2" de "2025.1"
  And Eu seleciono a métrica "Número de alunos aprovados por nota"
  Then Eu consigo ver um gráfico mostrando "5" para a turma "T1-24.2", "2" para a turma "T2-24.2", "1" para a turma "T1-25.1" e "7" para a turma "T2-25.1"

Scenario: Usando o número de alunos reprovados por nota como métrica
  Given Eu estou na página de comparação de desempenho
  When Eu seleciono a disciplina "Fundamentos de Redes de Computadores"
  And Eu seleciono a turma "T0" de "2025.2"
  And Eu seleciono a turma "T2" de "2026.1"
  And Eu seleciono a métrica "Número de alunos reprovados por nota"
  Then Eu consigo ver um gráfico mostrando "1" para a turma "T0-25.2" e "3" para a turma "T2-26.1"

Scenario: Usando o número de alunos reprovados por falta como métrica
  Given Eu estou na página de comparação de desempenho
  When Eu seleciono a disciplina "Complementos da Matemática para Computação"
  And Eu seleciono as turmas "T1" e "T2" de "2026.1"
  And Eu seleciono a métrica "Número de alunos reprovados por falta"
  Then Eu consigo ver um gráfico mostrando "0" para a turma "T1-26.1" e "2" para a turma "T2-26.1"
