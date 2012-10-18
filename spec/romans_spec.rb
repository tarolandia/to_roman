require "./romans.rb"

describe Roman do
  examples = { I: 1,
               II: 2,
               III: 3,
               IV: 4,
               V: 5,
               VI: 6,
               VII: 7,
               VIII: 8,
               IX: 9,
               X: 10,
               XL: 40,
               XLIV: 44,
               L: 50,
               CMXCIX: 999,
               MMMCMXCIX: 3999
  }

  examples.each do |k, v|

    it "should return #{k} for number #{v}" do
      v.to_roman.should == k.to_s
    end

  end
  
end
