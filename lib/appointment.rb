class Appointment
  attr_accessor :patient, :date, :doctor

  ALL = []

  def initialize (date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
    ALL << self
  end

  def self.all
    ALL
  end
end
