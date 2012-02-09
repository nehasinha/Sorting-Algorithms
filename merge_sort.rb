 # divide array into 2 parts
 # compare each element with other

def MergeSort(a)
  if a.length <= 1
    return a
  end
  middle = a.length/2
  left   = a[0..middle-1]
  right  = a[middle..-1]

  left = MergeSort(left)
  right = MergeSort(right)
  sorted_array = merge(left,right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty? do
    if left.first <= right.first then
      result << left.shift
    else
      result << right.shift
    end
  end

  unless left.empty?
    result += left
  end
  unless right.empty?
    result += right
  end
  result
end


a = [6,5,3,1,8,7,2,4]
i = MergeSort(a)
 puts i