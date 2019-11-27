class DoctorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :category, :description, :fee, :exp, :likes, :phone, :address
end
