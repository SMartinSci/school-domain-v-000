class School
   def initialize(name)
    @name = name
    @roster = {}
   end

    def roster
      @roster
    end
  
    def add_student(name, grade)
     if @roster[grade] != nil
        @roster[grade] << name
      else
        @roster[grade] = [name]
    end
  end

    def grade(grade)
      @roster[grade]
    end
    
    def sort
      @roster.each do |name, grade|
        grade.sort!
      end
  end
end

#Alternatively:
# class School
#   attr_accessor :name, :roster

#   def initialize(name)
#     @name = name
#     @roster = {}
#   end

#   def add_student(student_name, grade)
#     roster[grade] ||= []
#     roster[grade] << student_name
#   end

#   def grade(student_grade)
#     roster[student_grade]
#   end

#   # this method should arrange the students in each grade by alphabetical order
#   def sort
#     sorted = {}
#     roster.each do |grade, students|
#       sorted[grade] = students.sort
#     end
#     sorted
#   end
# end
