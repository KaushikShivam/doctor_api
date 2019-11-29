class AppointmentSerializer < ActiveModel::Serializer
  attributes :patient, :reason, :date, :time, :doctor
end
