# your code goes here
 class Person
    attr_reader :happiness_pts, :hygiene_pts
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness_pts = 8
        @hygiene_pts = 8
    end
    def name=(name)
        @name = name
    end
    def name
        @name
    end

    def clean?
        @hygiene_pts > 7
    end

    def happy?
        @happiness_pts > 7
    end

    def get_paid=(amount)
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        @hygiene_pts += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness_pts += 2
        @hygiene_pts -= 3
        "♪ another one bites the dust ♫"
    end

    def happiness=(amount)
        if amount > 10
            @happiness_pts = 10
        elsif amount < 0
            @happiness_pts = 0
        else
            @happiness_pts = amount 
        end
    end

    def hygiene=(amount)
        if amount > 10
            @hygiene_pts = 10
        elsif amount < 0
            @hygiene_pts = 0
        else
            @hygiene_pts = amount 
        end
    end

    def call_friend=(friend)
        self.happiness_pts += 3
        friend.happiness_pts += 3
        "Hi #{friend.name} It's #{self.name}. How are you?"
    end

    def start_converstion=(person,topic)
        if topic == "politics"
            self.happiness_pts -= 1
            person.happiness_pts -= 1
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness_pts += 1
            person.happiness_pts += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah".
        end

    end
 end
end