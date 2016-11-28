require "./spec_helper"

class Test < SingleTon
  
  st_properties(
    prop1 : String = "test",
    prop2 = 25,
    prop3 : Float64 = 1.0,
  )
end

describe Singleton do
  it "works" do
    test = Test.get_instance
    Test.get_instance.prop1.should eq("test")
    Test.get_instance.prop2.should eq(25)
    Test.get_instance.prop3.should eq(1.0)
    test.prop1 = "ok"
    Test.get_instance.prop1.should eq("ok")
    Test.get_instance.prop2.should eq(25)
    Test.get_instance.prop3.should eq(1.0)
  end
end
