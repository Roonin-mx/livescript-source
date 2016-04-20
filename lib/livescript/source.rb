require_relative 'source/version'

module LiveScript
  module Source
    def self.bundled_path
      raise 'livescript-source >= 1.3.0 only work with livescript-ruby >= 2.3.0!'
    end

    def self.raw_contents
      filepath = File.expand_path('../livescript.js', __FILE__)
      File.read filepath
    end

    # contents that expose LiveScript.compile
    def self.contents
      filepath = File.expand_path('../livescript.js', __FILE__)
      # LiveScript >= 1.3 does not expose `LiveScript`
      File.read(filepath) + "var LiveScript = require('LiveScript');"
    end
  end
end
