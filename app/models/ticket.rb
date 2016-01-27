class Ticket < ActiveRecord::Base
include Workflow
  workflow do
    state :created do 
      event :book, transitions_to: :booked
    end
    state :booked
  end


private
  def book
    self.update_attribute(:info, "booked")
    p "booked"
  end

end
