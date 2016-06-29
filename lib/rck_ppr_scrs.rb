class String
  define_method(:beats?) do |play|
    output_string = ''
    if self == play
      output_string = "Its a Draw"
    elsif (self == 'rock') && (play == 'scissors') || (self == 'paper') && (play == 'rock') || (self == 'scissors') && (play == 'paper')
      output_string = true
    else
      output_string = false
    end
    output_string
  end
end
