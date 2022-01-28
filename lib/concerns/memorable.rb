module Memorable
    module ClassMethods
        def count
            self.all.count
        end

        def reset_all
            self.all.clear
        end
    end

    module InstanceClass
        def initialize
            self.class.all << self
        end
    end
end