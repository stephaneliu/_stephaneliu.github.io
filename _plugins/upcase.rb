module Jekyll
  class Upcase < Converter

    safe true
    priority :low

    def matches
      ext =~ /^\.upcase$/i
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
      content.upcase
    end
  end
end
