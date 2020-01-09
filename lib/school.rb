# code here!
class School

    attr_accessor :name, :roster

    def initialize(name, roster={})
        @name = name
        @roster = roster
    end

    def add_student(stud, grade)
        
        roster[grade] ||= []
        roster[grade] << stud
        
    end

    def grade(num)
        roster[num]
    end

    def sort
        sorted = {}

        roster.each do |grade, stud|
            sorted[grade] = stud.sort
        end
        sorted
    end

end # end of the class