class Teacher
  attr_reader :name

  ALL = []

  def self.all
    ALL
  end

  def initialize(name)
    @name = name
    self.class.all << self
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
