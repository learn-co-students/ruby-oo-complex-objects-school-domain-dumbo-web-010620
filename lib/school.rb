# code here!

class School
    attr_accessor :roster
    attr_reader :school

    def initialize(name)
        @school = name
        @roster = {}
    end
    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(lvl)
        roster[lvl]
    end

    def sort
        self.roster.each do |grade, name|
            self.roster[grade] = name.sort
        end
    end
end