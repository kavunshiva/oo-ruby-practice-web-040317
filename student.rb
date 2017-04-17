class Student
  attr_reader :name

  ALL = []

  def self.all
    ALL
  end

  def initialize(name)
    @name = name
    self.class.all << self
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
