# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor

  validates_presence_of :date
  validates_presence_of :time
  validates_uniqueness_of :patient
  validates_uniqueness_of :reason
end
