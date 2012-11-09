class Detetive
  
  def initialize
    @solucao = [1, 1, 1]
  end
  
  def investiga palpite
    return 0 if palpite == @solucao
    (0..2).to_a.map { |i| i + 1 if not palpite[i] == @solucao[0]  }.
      select { |n| n }.first
=begin    

    [0, 1, 2]
    [ 1, nil , nil ]
    [ 1 ].first
    


    elsif not palpite[0] == @solucao[0]
      1
    elsif not palpite[1] == @solucao[1]
      2
    elsif not palpite[2] == @solucao[2]
      3
    end
=end
  end
end