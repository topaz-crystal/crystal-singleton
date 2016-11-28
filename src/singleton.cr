require "./singleton/*"

class SingleTon
  
  macro st_init(*props)
    @@instance = new
    private def initialize
    end
  end

  macro st_property(name)
    property {{name}}
  end

  macro st_properties(*props)
    st_init
    {% for prop in props %}
      st_property {{prop}}
    {% end %}
  end

  def self.get_instance
    @@instance
  end
  
end
