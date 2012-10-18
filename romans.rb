module Roman
  MAPPING = {
    1 => 'I',
    4 => 'IV',
    5 => 'V',
    9 => 'IX',
    10 => 'X',
    40 => 'XL',
    50 => 'L',
    90 => 'XC',
    100 => 'C',
    400 => 'CD',
    500 => 'D',
    900 => 'CM',
    1000 => 'M'
  }

  def to_roman
    resto = self

    MAPPING.keys.reverse.collect do | number |
      ret = MAPPING[number]*(resto/number)
      resto-=number*(resto/number)
      ret
    end.join
  end
end

class Integer
  include Roman
end
