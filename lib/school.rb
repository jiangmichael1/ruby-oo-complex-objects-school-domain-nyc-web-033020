require 'pry'

class School
    attr_accessor :name, :roster
    
    def initialize (name)
        @name = name
        @roster = {}
    end

   
    def add_student (name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade (grade)
        return roster[grade]
    end

    def sort
        s_roster = {}
        roster.each do |grade, student|
            s_roster[grade] = student.sort
        end
        s_roster
    end
end
