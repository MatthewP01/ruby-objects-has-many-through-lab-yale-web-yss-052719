require "pry"

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

    def new_appointment(patient, date)
        n_app = Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |find|
            # binding.pry
            find.doctor == self
        end
    end

    def patients
        #Find all instances where there are appointments with this doc
        # Appointment.all.select do |doc|
        #     #binding.pry
        #     doc.doctor == self
        # end.map do |pat|
        #     pat.patient
        # end
        self.appointments.select do |doc|
            doc
        end.map do |pati|
            pati.patient
        end
    end


end