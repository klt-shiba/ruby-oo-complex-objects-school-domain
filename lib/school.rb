# code here!

class School
    
    attr_accessor :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)

        # Will initialise the value of the object on its left to whatever value you specify on its right side if the object on the left has not been initialised or is nil. On the other hand, if the object on the left has already been initialised - it will not do anything and let the object on the left carry on with its given value

        @roster[grade] ||= []
        @roster[grade] << name
    
    end

    def grade(grade)

        results = []
        
        @roster.filter do |key, students| 
            
            if key == grade
                students.each { |student | results << student}
            else 
            end
        end
        results

    end

    def sort
        
        @roster.sort.to_h
        @roster.each {|key, students| students.sort! }.sort.to_h
    
    end

end