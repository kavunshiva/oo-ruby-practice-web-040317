class Cohort
  attr_reader :teacher, :student

  ALL = []

  def initialize(teacher, student)
    @teacher = teacher
    @student = student
    self.class.all << self
  end

  def self.all
    ALL
  end
end
