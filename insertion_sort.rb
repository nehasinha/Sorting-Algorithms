#!/usr/bin/ruby
# Example of insertion sort


# Time complexity of this algorithm  - c * n * n, where c = constant & n = no. of elements in the array

def InsertionSort
  a = [5,2,4,6,1,3]#,0,9,7,8,32, 45,43,21,67,65,12,15,23,19,26,13,11,12]
  for j in 0..(a.length - 1)        # executed n times
    key = a[j]                      # n times
    i = j - 1                       # n times
    while i >= 0 && a[i] > key do   # executed
      a[i+1] = a[i]
      i = i - 1
      a[i+1] = key
    end
  end
  puts a
end

i = InsertionSort()


