module Sgdesigns
  class Error < StandardError; end
  class Renderer
    def self.copyright name, msg
      "Copyright; #{Time.now.year} | " " #{name} ". " #{msg}".html_safe
    end
  end
end
