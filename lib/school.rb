require "pry"
class School
attr_accessor :roster
  
  def initialize(school_name)
    @roster = {}
  end 
  
  def add_student(name,grade)
      
      # @roster[grade]||= [name]
       
      if @roster[grade] == nil
        @roster[grade] = []
       @roster[grade] << name
      else 
        @roster[grade] << name
      end
  end
      
  def grade(grade)
    
    @roster[grade]
  end
    
  def sort 
     @roster.each{|key,value| @roster[key] = value.sort}
  end 

end #end of class
 

#binding.pry 
