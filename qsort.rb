# See http://en.wikipedia.org/wiki/Quicksort for further discussion

module LearnMeAQuickSort

    def self.sort(array)

        # Recursion termination clause
        return array if array.length < 2

        # Pick a pivot - assume it's the median value
        pivot_index = array.length / 2             
        pivot       = array[pivot_index]

        # Assuming the pivot is a median value, partition the array
        # into three parts - values less than, equal to, and more than the pivot.
        less   = array.find_all { |value| value <  pivot }
        pivots = array.find_all { |value| value == pivot }
        more   = array.find_all { |value| value >  pivot }

        # Now put them back together with a little recursion to sort our sub-sets
        return sort(less) + pivots + sort(more)

    end
end