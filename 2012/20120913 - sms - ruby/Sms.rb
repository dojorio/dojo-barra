class Sms
  def write(text)
    i = 0
    digitos = ""
    ultimo = ""
    while i != text.length do
      letter = text[i]
      if i != 0
        if "ABC".index(letter) != nil and "ABC".index(ultimo) != nil
          digitos += "_"
        end
      end
      case letter
      when "A" 
        digitos += "2"
      when "B" 
        digitos += "22"
      when "C" 
        digitos += "222"
      when "D"
        digitos += "3"
      when "E"
        digitos += "33"
      when "F"
        digitos += "333"
      when "P"
        digitos += "7"
      when "R"
        digitos += "777"
      when "O"
        digitos += "666"
      when "J"
        digitos += "5"
      when "S"
        digitos += "7777"
      when "M"
        digitos += "6"
      when "L"
        digitos += "555"

      end 
      ultimo = letter
      i += 1   
    end
    digitos 
  end
end
