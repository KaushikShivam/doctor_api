class DoctorSerializer < ActiveModel::Serializer
  attributes :name, :category, :description, :fee, :exp, :likes, :phone, :address
end
