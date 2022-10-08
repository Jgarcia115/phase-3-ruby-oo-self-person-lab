require 'pry'

class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if (value >= 0 && value <= 10)
            @happiness = value
        elsif (value > 10)
            @happiness = 10
        elsif (value < 0)
            @happiness = 0
        end
    end

    def hygiene=(value)
        if (value >= 0 && value <= 10)
            @hygiene = value
        elsif (value > 10)
            @hygiene = 10
        elsif (value < 0)
            @hygiene = 0
        end
    end

    def happy?
        if @happiness > 7
            return true
        elsif @happiness <= 7
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        elsif @hygiene <= 7
            return false
        end
    end

    def get_paid(int)
        @bank_account = (@bank_account + int)
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness=(@happiness + 3)
        person.happiness=(person.happiness + 3)
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness=(@happiness - 2)
            person.happiness=(person.happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness + 1)
            person.happiness=(person.happiness + 1)
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end


end