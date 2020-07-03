require 'student.rb'

class SchoolDatabase

  def students(grade)
    Student.where(grade: grade).order(:name).pluck(:name)
  end

  def add(name, grade)
    Student.create(name: name, grade: grade)
  end

  def students_by_grade
    Student.all.order(:grade, :name).group_by(&:grade).map do |grade, students|
      { grade: grade, students: students.pluck(:name) }
    end

  end

end
