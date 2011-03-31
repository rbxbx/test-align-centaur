describe TestAlignCentaur do

  def self.pass
    it { }
  end

  def self.fail
    it { true.should be_false }
  end

  def self.pend(reason)
    it { pending(reason) }
  end

  49.times { pass }

  pend "Left eye"
  pass
  pend "Right eye"

  566.times { pass }

end
