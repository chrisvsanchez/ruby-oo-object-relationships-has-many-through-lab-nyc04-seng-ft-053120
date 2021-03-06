class Doctor

    attr_accessor :name

    @@all = []

def initialize(name)
    @name = name
    @@all << self
end


def self.all 
@@all
end

def appointments
Appointment.all.select{|appoint| appoint.doctor == self}
end

def new_appointment( patient, date)
Appointment.new(date, patient, self)
end

def patients
Appointment.all.map{|app| app.patient}
end



end