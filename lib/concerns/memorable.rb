module Memorable

  module ClassMethods

    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end

    def find_by_name(name)
      self.all.detect{|a| a.name == name}
    end

  end

  module InstanceMethods

    def to_param
      self.name.downcase.gsub(' ', '-')
    end

    
    def initialize
      self.class.all << self
    end

  end

end