class Patient
  attr_accessor :name, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    apt = doctor.new_appointment(self, date)
    @appointments << apt
  end


end
