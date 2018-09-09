require 'benchmark'

class Serarch
 attr_reader :processed_array,:serarch_num

  def initialize(processed_array,serarch_num)
    @processed_array = processed_array
    @serarch_num = serarch_num
  end

  def linear_search
    processed_array.each do |num|
      if num == serarch_num
         return
      end
    end
  end
  
  def find_method
    processed_array.find{|n| n == serarch_num}
  end
end




#processed_array = (1..100_000_000_0).to_a
processed_array = ("a".."zzzzz").to_a
#serarch_num = 1
serarch_num = "zzz"

s = Serarch.new(processed_array ,serarch_num)

Benchmark.bm 15 do |r|
  r.report "linear_search" do
    s.linear_search
  end
  r.report "find_method" do
    s.find_method
  end
end
