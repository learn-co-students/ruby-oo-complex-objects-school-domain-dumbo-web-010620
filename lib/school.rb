# code here!

class School
    attr_accessor :name, :roster
    def initialize(name)
        @name=name
        @roster={}
    end

    def add_student(name, grade)
        # ahh yes << is the Ruby push operator!
        @roster[grade] ||= []
        @roster[grade] << name

        # this is asking if there is a grade property
        # within the roster hash
        # if there is, point it to an array with that single
        # student name in it
        # @roster[grade] ||= [name]
        # second attempt that doesn't work:
        # if @roster[grade] exists concat name, otherwise set it to [name]
        # @roster[grade] = @roster[grade] + name ||= [name]
    end

    def grade(grade)
        @roster[grade]
    end

    # def sort

    # end

    # an attempt
    def sort
        sorted_hash = {}
        @roster.each do |grade_key, student_array|
            sorted_hash[grade_key] = student_array.sort
        end
        sorted_hash
    end
end