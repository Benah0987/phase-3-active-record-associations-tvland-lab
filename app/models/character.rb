class Character < ActiveRecord::Base
    # establish an association
    belongs_to :actor
    belongs_to :show

    # method
    def say_that_thing_you_say
        puts "{name}: #{catchphrase}"
    end

  
end