require "./spec_helper"

class Test < SingleTon
  st_fields(
    {st_type: :property, name: prop1, type: String,  df: "text"},
    {st_type: :getter,   name: prop2, type: Int32,   df: 0},
    {st_type: :setter,   name: prop3, type: Float64, df: 1.0}
  )

  def set_prop2(@prop2)
  end
  
  def get_prop3
    @prop3
  end
end

describe Singleton do
  it "works" do
    
    test = Test.get_instance
    
    Test.get_instance.prop1.should eq("text")
    Test.get_instance.prop2.should eq(0)
    Test.get_instance.get_prop3.should eq(1.0)
    
    test.prop1 = "ok"
    test.set_prop2(100)
    test.prop3 = 2.0
    
    Test.get_instance.prop1.should eq("ok")
    Test.get_instance.prop2.should eq(100)
    Test.get_instance.get_prop3.should eq(2.0)
  end
end
