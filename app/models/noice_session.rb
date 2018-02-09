class NoiceSession < ApplicationRecord
  belongs_to :user

  validates_presence_of :mic_data, :interface_data, :equipment_data
  validates_length_of :mic_data, in: 5..1000
  validates_length_of :interface_data, in: 5..1000
  validates_length_of :equipment_data, in: 5..1000

  enum status: [:waiting_diagnostics, :waiting_approval, :ongoing]

  def status_label
    return "Closed" unless self.open
    return "Waiting for diagnostics" if waiting_diagnostics?
    return "Waiting for member approval" if waiting_approval?
    return "Ongoing" if ongoing?
  end
end
