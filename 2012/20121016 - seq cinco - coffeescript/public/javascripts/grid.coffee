class window.Grid
  constructor: (@grid) -> 
  total: ->
    total = []
    return 0 if @grid[0].length is 0
    maiorLinhas = @maiorLinhas()
    maiorColunas = @maiorColunas()
    return if maiorColunas > maiorLinhas then maiorColunas else maiorLinhas

  maiorLinhas: ->
    @acharMaior @grid

  maiorColunas: ->
    colunas = []
    numeroDeColunas = @grid[0].length 
    for i in [0..numeroDeColunas - 1]
      coluna = []
      for linha in @grid
        coluna.push linha[i]
      colunas.push coluna
    #[[1,2,3],[4,5,6]]
    @acharMaior colunas

  acharMaior: (elementos)->
    maior = 0
    for elemento in elementos
      subtotal = 1
      for i in elemento
        subtotal *= i
      if subtotal > maior then maior = subtotal 
    maior

  maiorDiagonal: ->
    diagonais = []
    

