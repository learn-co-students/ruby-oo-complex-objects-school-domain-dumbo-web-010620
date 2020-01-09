# code here!

class School 

    attr_accessor :name, :roster

    def initialize(name, roster = {})
        @name = name 
        @roster = roster 
    end 

    def add_student(student, grade)
        # if @roster[grade]
        #   @roster[grade] << student_name
        # else
        #   @roster[grade] = []
        #   @roster[grade] << student_name
        # end

        roster[grade] ||= []
        roster[grade] << student

      end

      def grade(num)
        roster[num]
      end 

      def sort 
        sorted = {}
        roster.each do |grade, student| 
          sorted[grade] = student.sort 
      end 
      sorted
    end 
  end 
