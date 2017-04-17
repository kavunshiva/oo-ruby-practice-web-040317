class Teacher
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def add_student(student)
    Cohort.new(self, student)
  end

  def students
    Cohort.all.collect do |cohort|
      cohort.student
    end
  end
end
