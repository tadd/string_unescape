class String
  def unescape
    if self[0] == '"' && self[-1] == '"'
      self
    else
      %("#{self}")
    end.undump
  end
end
