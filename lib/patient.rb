class Patient 
  
  attr_reader :name 
  
  @@all =[]
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(doctor, date)
    Appoinment.new(date, self, doctor)
  end 
  
  def appointments
    Appoinment.all.select {|appt| appt.patient == self}
  end 
  
  def doctors
    appointments.map {|appt| appt.doctor} 
  end 
  
end 