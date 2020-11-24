require 'pry'
class School
    attr_reader :name
    attr_accessor :roster, :add_student

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end
    # binding.pry

    def grade(grade)
        @roster[grade]
    end 

    def sort
        # sorted = @roster[grade].sort
        # sorted = @roster.sort
        sorted = @roster.sort_by { |grade, name| grade }
        # binding.pry
    end
end

school = School.new("Bayside High School")
school.roster
school.add_student("Zach Morris", 10)
school.add_student("Jeff", 9)
school.add_student("Alec", 9)
school.add_student("bob", 10)
school.add_student("zach", 10)
school.add_student("Al", 10)

# binding.pry