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
  # st_type: :property, :getter or :setter
  # name: whatever you like
  # type: type of the property such as String, Int32 or Bool
  # df: default value of each property
  st_fields(
    {st_type: :property, name: prop1, type: String,  df: "text"},
    {st_type: :getter,   name: prop2, type: Int32,   df: 0},
    {st_type: :setter,   name: prop3, type: Float64, df: 1.0}
  )
end

test = Test.get_instance

a = Test.get_instance.prop1
b = Test.get_instance.prop2

test.prop1 = "ok"
test.prop3 = 2.0
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
