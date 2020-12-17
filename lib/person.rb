# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :happiness, :hygiene, :name
    def initialize(name,bank_account=25,happiness=8,hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
        @happiness = [happiness,0,10].sort[1]
    end

    def hygiene=(hygiene)
        @hygiene = [hygiene,0,10].sort[1]
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    def take_bath
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
        #@hygiene = [hygiene,0,10].sort[1]
    end
    def work_out
        @happiness += 2
        "♪ another one bites the dust ♫"
       
    end
    
end