class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies 

    def received_one?(item_name)
        self.freebies.exists?(item_name: item_name)
    end

    def give_away(dev, freebie)
        if self.received_one?(freebie) ==true
            puts "has one already"
        else
            freebie.dev_id=self.id
        end
    end
end


