require 'benchmark'



def linear_search(array_size,serarch_value)
  arr = (1..array_size).to_a
  arr.each do |num|
    if num == serarch_value
       return "done"
    end
  end
end

def binary_search(array_size,serarch_value)
  arr = (1..array_size).to_a
  left = 0
  right = array_size
  middle = 0

  while left <= right do
    mid = (left + right) / 2
    if arr[mid] == serarch_value
      return "done"
    elsif arr[mid] < serarch_value
      left = mid + 1
    else
      right = mid -1
    end
  end
end

def find_method(array,serarch_value)
  arr = array.find{|n| n == serarch_value}
end

def find_method_to_a(array_size,serarch_value)
  arr = (1..array_size).to_a.find{|n| n == serarch_value}
end

def find_method_no_to_a(array_size,serarch_value)
  arr = (1..array_size).find{|n| n == serarch_value}
end

def bsearch_method(array_size,serarch_value)
  arr = (1..array_size).to_a.bsearch{|n| n == serarch_value}
end

def bsearch_method_no_to_a(array_size,serarch_value)
  arr = (1..array_size).bsearch{|n| n == serarch_value}
end




array_size = 100_000_000
processed_array = (1..100_000_000).to_a
target_value = 100_000_000


Benchmark.bm 15 do |r|
  r.report "linear_search" do
    linear_search(array_size,target_value)
  end
    r.report "find_method" do
    find_method(processed_array,target_value)
  end
  r.report "find_method_to_a" do
    find_method_to_a(array_size,target_value)
  end
    r.report "find_method_no_to_a" do
    find_method_no_to_a(array_size,target_value)
  end
  r.report "binary_search" do
    binary_search(array_size,target_value)
  end

  r.report "bsearch_method" do
    bsearch_method(array_size,target_value)
  end
      r.report "bsearch_method_no_to_a" do
   bsearch_method_no_to_a(array_size,target_value)
  end
end
