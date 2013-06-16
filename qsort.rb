# See http://en.wikipedia.org/wiki/Quicksort

module TusharsQuickSort

    def self.qsort(array)

        if array.length > 1

            pivotIndex = array.length/2             # Pick a pivot - assume it's the median

            pivot = array[pivotIndex]
            less, remainder = array.partition{|i| i < pivot}
            pivots, more    = remainder.partition{|i| i == pivot }

            array = qsort(less) + pivots + qsort(more)

        end

        array
    end
end