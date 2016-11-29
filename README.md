# SingleTon

Implementation of Singleton design patter for Crystal-lang.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  singleton:
    github: tbrand/crystal-singleton
```


## Usage


```crystal
require "singleton"

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

```

**Note that parent class of each singleton is Single'T'on, not Single't'on**

## Development

TODO: Write development instructions here

## Contributing

1. Fork it ( https://github.com/tbrand/crystal-singleton/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [tbrand](https://github.com/tbrand) Taichiro Suzuki - creator, maintainer
