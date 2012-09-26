
import System.Drawing
[NUnit.Framework.TestFixture]
class TestesSudoku:
  [NUnit.Framework.Test]
  def GridVazioPermiteQualquerNumero():
    tabuleiro = Tabuleiro()
    tabuleiro.Entra(1,Point(0,0))
    NUnit.Framework.Assert.AreEqual(1, tabuleiro.Grid()[0, 0])
  [NUnit.Framework.Test]
  def GridVazioRecebeNumeroNaPosicao55():
    tabuleiro = Tabuleiro()
    num = 3
    tabuleiro.Entra(num, Point(5,5))
    NUnit.Framework.Assert.AreEqual(num, tabuleiro.Grid()[5, 5])
  [NUnit.Framework.Test]
  [NUnit.Framework.ExpectedException()]
  def TestaSeNumeroSeRepeteNaColuna():
  	tabuleiro = Tabuleiro()
  	tabuleiro.Entra(1,Point(0,0))
  	tabuleiro.Entra(1,Point(1,0))
  [NUnit.Framework.Test]
  [NUnit.Framework.ExpectedException()]
  def TestaSeNumeroSeRepeteNaLinha():
  	tabuleiro = Tabuleiro()
  	tabuleiro.Entra(1, Point(0,0))
  	tabuleiro.Entra(1, Point(0,1))
  
  [NUnit.Framework.Test]
  def TestaSeNumeroSeRepeteEmQualquerLugarPermitido():
  	tabuleiro = Tabuleiro()
  	tabuleiro.Entra(1, Point(5,5))
  	tabuleiro.Entra(1, Point(8,8))
  
  [NUnit.Framework.Test]
  def TestaSeNumeroSeRepeteEmQualquerLugarPermitidoDois():
  	tabuleiro = Tabuleiro()
  	tabuleiro.Entra(1, Point(1,1))
  	tabuleiro.Entra(1, Point(5,5))

  [NUnit.Framework.Test]
  [NUnit.Framework.ExpectedException()]
  def TestaSeNumeroSeRepeteNoQuadrante():
  	tabuleiro = Tabuleiro()
  	tabuleiro.Entra(1, Point(1,1))
  	tabuleiro.Entra(1, Point(2,2))

  [NUnit.Framework.Test]
  [NUnit.Framework.ExpectedException()]
  def TestaSeNumeroSeRepeteNoQuadranteDois():
  	tabuleiro = Tabuleiro()
  	tabuleiro.Entra(1, Point(4,4))
  	tabuleiro.Entra(1, Point(5,5))

class Tabuleiro:
  matriz = matrix(int, 9, 9)
  
  def Entra(numero, posicao as Point):

  	# Testa linhas
    for x in range(8):
      if matriz[x,posicao.Y] == numero:
        raise 'Linha repetida'

    # Testa colunas
    for y in range(8):
      if matriz[posicao.X,y] == numero:
        raise 'Coluna repetida'
    
    for x in range(2):
      for y in range(2):
        if matriz[x,y] == numero:
          raise 'Quadrante repetido'

    for x in range(3,5):
      for y in range(3,5):
        if matriz[x,y] == numero:
          raise 'Quadrante repetido'

    matriz[posicao.X, posicao.Y] = numero

  def Grid():
  	return matriz