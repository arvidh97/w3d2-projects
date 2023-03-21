class Card 
  # CARDS = [:a,:b,:c,:d,:e,:f,:g,:h]
  def initialize(face_val,face_side)
    @face_val = face_val
    @face_side = face_side
  end

  # def card_val
  #   @face_val = CARDS.sample
  # end

  def hide!
    @face_side = false
  end

  def reveal!
    @face_side = true
  end

  # def to_s #may be wrong 
    
  # end

  # def ==(prev_guess,guess)
  #     prev_guess == guess
  # end 



end