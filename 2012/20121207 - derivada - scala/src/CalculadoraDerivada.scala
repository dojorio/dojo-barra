/**
 * Created with IntelliJ IDEA.
 * User: Breno
 * Date: 06/12/12
 * Time: 20:13
 * To change this template use File | Settings | File Templates.
 */
class CalculadoraDerivada {
  def calcular(polinomio: List[(Int, Int)]):List[(Int, Int)] = {
    polinomio match {
      case Nil => Nil
      case h :: t =>
        if (h._2 == 0) calcular(t)
        else (h._1 * h._2, h._2 -1) :: calcular(t)
    }
  }
}
