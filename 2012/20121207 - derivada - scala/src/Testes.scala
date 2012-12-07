import org.scalatest.FunSpec

class Testes extends FunSpec {
  describe("Calculador Derivada") {
    it("Derivada 3x^2 = 6x^1"){
      val calculadora = new CalculadoraDerivada();
      val polinomio = List( (3 -> 2) )
      val derivada = calculadora.calcular(polinomio)

      assert(derivada === List( (6 -> 1)))
    }

    it("Derivada 2x^1 = 2"){
      val calculadora = new CalculadoraDerivada();
      val polinomio = List( (2 -> 1) )
      val derivada = calculadora.calcular(polinomio)

      assert(derivada === List((2 -> 0)))
    }

    it("Derivada 4x^0 = Nil"){
      val calculadora = new CalculadoraDerivada();
      val polinomio = List( (4 -> 0) )
      val derivada = calculadora.calcular(polinomio)

      assert(derivada === Nil)
    }

    it("Derivada 3x^2 + 2x^1 = 6x^1 + 2"){
      val calculadora = new CalculadoraDerivada();
      val polinomio = List( (3 -> 2), (2 -> 1) )
      val derivada = calculadora.calcular(polinomio)

      assert(derivada === List( (6 -> 1),(2 -> 0)))
    }

    it("Derivada 3x^2 + 2x^1 + 4 = 6x^1 + 2"){
      val calculadora = new CalculadoraDerivada();
      val polinomio = List( (3 -> 2), (2 -> 1), (4 -> 0) )
      val derivada = calculadora.calcular(polinomio)

      assert(derivada === List( (6 -> 1),(2 -> 0)))
    }

    it("Derivada 3x^3 + 2x^2 + 3x^1 + 4 = 9x^2 + 4x^1 + 3"){
      val calculadora = new CalculadoraDerivada();
      val polinomio = List( (3 -> 3), (2 -> 2), (3 ->1),(4 -> 0) )
      val derivada = calculadora.calcular(polinomio)

      assert(derivada === List( (9 -> 2),(4 -> 1),(3->0)))
    }

  }
}
