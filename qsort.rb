# See http://en.wikipedia.org/wiki/Quicksort

module TusharsQuickSort

    def self.qsort(array)

        if array.length > 1
            pivotIndex = array.length/2

            pivot = array[pivotIndex]
            less = []
            more = []

            array.each_with_index do |item, index|
                if index != pivotIndex 
                    if item < pivot
                        less << item
                    else
                        more << item
                    end
                end
            end

            array = qsort(less) + [pivot] + qsort(more)

        end

        array
    end
end