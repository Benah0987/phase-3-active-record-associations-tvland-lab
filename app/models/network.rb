class Network < ActiveRecord::Base

    has_many :shows
  
    def self.sorry
      "We're sorry about passing on John Mulaney's pilot"
    end
  end
  