
# Bubble sort
# time complexity = n-1 * n-2-i = n-1 * n-1 -1-i = 2*(n-1)-1-i = n2

def bubble_sort(array_to_be_sorted)
  n = array_to_be_sorted.length
  (0..n-1).each do |i|
		j = 0
		while j <= n-2-i  do
			if array_to_be_sorted[j] > array_to_be_sorted[j+1] then
					array_to_be_sorted[j],array_to_be_sorted[j+1] = 	array_to_be_sorted[j+1], array_to_be_sorted[j]
			end
			j = j + 1
	 	end
	end
	return array_to_be_sorted
end

array_to_be_sorted = [4,2,0,9,21,45,18,6,-1]
puts bubble_sort(array_to_be_sorted)
