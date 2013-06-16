require "./qsort"

describe LearnMeAQuickSort do
    it "should sort empty arrays" do
        LearnMeAQuickSort.sort([]).should == []
    end

    it "should sort singleton arrays" do
        LearnMeAQuickSort.sort([42]).should == [42]
    end

    it "should actually sort!" do
        LearnMeAQuickSort.sort([42,1,77,22]).should == [1,22,42,77]
    end

    it "should sort with multiple pivots" do
        LearnMeAQuickSort.sort([42,1,1,1,24]).should == [1,1,1,24,42]
    end

end