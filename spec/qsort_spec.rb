require "./qsort"

describe TusharsQuickSort do
    it "should sort empty arrays" do
        TusharsQuickSort.qsort([]).should == []
    end

    it "should sort singleton arrays" do
        TusharsQuickSort.qsort([42]).should == [42]
    end

    it "should actually sort!" do
        TusharsQuickSort.qsort([42,1,77,22]).should == [1,22,42,77]
    end

end