describe TestAlignCentaur do

  def stall
    sleep rand/16
  end

  def self.pass
    it { stall }
  end

  def self.fail
    it { stall; true.should be_false }
  end

  def self.pend(reason)
    it { stall; pending(reason) }
  end

  49.times { pass }

  pend "Left eye"
  pass
  pend "Right eye"

  566.times { pass }

end
