class Cohort
  attr_reader :teacher, :student

  ALL = []

  def self.all
    ALL
  end

  def initialize(teacher, student)
    @teacher = teacher
    @student = student
    self.class.all << self
  end
end
