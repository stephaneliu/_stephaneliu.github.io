module Jekyll

  require 'haml'
  class HamlConverter < Converter
    safe true
    priority :low

    def matches(ext)
      (ext =~ /haml/i).tap {|match| puts "matches: #{match}"}
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
      engine = Haml::Engine.new(content)
      engine.render.tap {|con| puts con }
    end
  end

  require 'sass'
  class SassConverter < Converter
    safe true
    priority :low

    def matches(ext)
      ext =~ /sass/i
    end

    def output_ext(ext)
      ".css"
    end

    def convert(content)
      engine = Sass::Engine.new(content)
      engine.render
    end
  end

end
