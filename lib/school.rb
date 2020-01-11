# code here!
require 'pry'
class School
    attr_accessor :school, :roster, :name, :grade
    
    def initialize(school,roster = {})
        @school = school
        @roster = roster
    end

    def add_student(name,grade)
        @name = name
        @grade = grade
        (@roster[@grade] ||= []) << @name
        #if the roster[key] exists, push name argument into roster key
    end
    def grade(number)
        roster[number]
    end
    
    def sort
        students_sorted = {}
        roster.each do |grade,student_array| 
            students_sorted[grade] = student_array.sort
        end
        students_sorted
    end
end