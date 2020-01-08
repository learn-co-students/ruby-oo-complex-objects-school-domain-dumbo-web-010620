class School
  
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)      # roster => {9 => ["Zach Morris"]}
    if @roster[grade] == nil                # if it is nil then
      @roster[grade] = []                   # returns empty array
        @roster[grade] << student_name      # add student_name to empty array
    else
      @roster[grade] << student_name        # if array exist, just add student_name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted = {}                             # new hash
    @roster.each do |grade, name|           # goes over each grade
      sorted[grade] = name.sort             # sort names in each array
    end
    sorted                                  # return to save changes
  end
  
end