def bubble_sort(array)
# Return the array if length <= 1 as there is nothing to sort
    array_length=array.size
    return array if array_length <= 1

    # Set a while loop and break out if none of the arra elements need to be changed
    loop do
      swapped =false
        (array_length-1).times do |a|
            # Compare a pair of two adjacent elements and change their position if a> a+1
            if array[a]>array[a+1]
                array[a], array[a+1] = array[a+1], array[a]
                swapped = true
            end
        end

        break if not swapped
    end
# return the array
    array
end

array=[4,3,78,2,0,2]
p bubble_sort(array)



