class Student
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def add_teacher(teacher)
    Cohort.new(teacher, self)
  end

  def teachers
    Cohort.all.collect do |cohort|
      cohort.teacher
    end
  end
end
