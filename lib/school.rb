class School

    attr_reader :roster

    def initialize (roster)
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(num)
        roster[num]
    end

    def sort
        sorted_students = {}
        roster.map do |grade, student|
             sorted_students[grade] = student.sort
        end
        sorted_students
    end

end
