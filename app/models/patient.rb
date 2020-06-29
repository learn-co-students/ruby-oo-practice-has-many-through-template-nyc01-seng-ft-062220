#class for Model2 goes here
#Feel free to change the name of the class
class Patient
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def appointments
        Appointment.all.select do |app|
            app.patient == self
        end
    end

    def doctors
        appointments.map do |app|
            app.doctor
        end
    end

    def make_appointment(doctor, day)
        Appointment.new(doctor, self, "Monday")
    end
    
end
