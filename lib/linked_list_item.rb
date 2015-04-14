class LinkedListItem
  include Comparable  #Look into Comparable...

#   attr_accessor :payload, :next_item
  attr_reader :payload
  attr_reader :next_item

  def initialize(payload)
    @payload = payload
  end

  def last?
    next_item.nil?    
  end  
  
  def next_item=(lli)
    raise ArgumentError, "cant next_item its self" if self == lli
    @next_item = lli
  end
  
  def <=> (other)
    if self.payload.class == other.payload.class
      self.payload <=> other.payload
    else
      self.payload.class.to_s <=> other.payload.class.to_s
    end
  end
  
  def === (other)                         
    self.equal? other
  end
end