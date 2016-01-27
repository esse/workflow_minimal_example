class Ticket::TestBook < Ticket
  
private

  def book
    self.update_attribute(:info, "booked from subclass")
    p 'booked from subclass'
  end
end
