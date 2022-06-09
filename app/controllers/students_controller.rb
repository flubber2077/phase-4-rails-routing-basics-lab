class StudentsController < ApplicationController

    def index
        render json: Student.all
    end

    def grades
        students = Student.all.sort_by(&:grade).reverse
        render json: students
    end

    def highest_grade
        students = Student.all.sort_by(&:grade).reverse.first
        render json: students
    end
end
