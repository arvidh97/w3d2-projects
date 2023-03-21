class Card 

  def initialize(face_val, face_side)
    @face_val = face_val
    @face_side = face_side
  end

  def card_val
    if @face_side == false
      @face_val = nil
    else  
      @face_val
    end
  end

  def hide!
    @face_side = false
  end

  def reveal!
    @face_side = true
  end

  def to_s #may be wrong 
    @face_val.to_s
  end

  


end