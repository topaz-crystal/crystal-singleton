require "./singleton/*"

class SingleTon
  
  macro st_init(*props)
    
    @@instance = new
    
    private def initialize
    end
  end
  
  macro st_fields(*props)
    
    st_init
    
    {% for prop in props %}
      {% if prop[:st_type] == :property %}
        property {{prop[:name].id}} : {{prop[:type].id}}|Nil = {{prop[:df]}}
      {% elsif prop[:st_type] == :getter %}
        getter {{prop[:name].id}} : {{prop[:type].id}}|Nil = {{prop[:df]}}
      {% elsif prop[:st_type] == :setter %}
        setter {{prop[:name].id}} : {{prop[:type].id}}|Nil = {{prop[:df]}}
      {% end %}
    {% end %}
  end

  def self.get_instance
    @@instance
  end
end
