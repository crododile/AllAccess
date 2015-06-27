require "all_access/version"

module AllAccess
  module Initializer
    def initialize
      super
      create_readers
      create_writers
    end
  
    def ivar_strings_and_symbols
      instance_variables.map do |iv|
        [iv.to_s.gsub("@",'').to_sym, iv.to_s]
      end
    end
    
    def create_readers
      ivar_strings_and_symbols.each do |iv|
        define_singleton_method iv[0].to_sym, lambda { eval(iv[1]) }
      end
    end

    
    def create_writers
      ivar_strings_and_symbols.each do |iv|
        define_singleton_method "#{iv[0]}=".to_sym, lambda {|assignment|
          if assignment.class == String
           eval "#{iv[1]} = '#{assignment}'"
          else
           eval "#{iv[1]} = #{assignment}"
          end
          }
      end
    end
  end
  
  def self.included(klass)
    klass.send :prepend, Initializer
  end
end