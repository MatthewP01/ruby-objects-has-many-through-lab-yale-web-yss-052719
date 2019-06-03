class Patient

    @@all = []
    
    attr_accessor :name

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |pat|
            pat.patient == self
        end
    end

    def doctors
        self.appointments do |me|
            me
        end.map do |doc|
            doc.doctor
        end
    end

end