class BoardCase
  attr_accessor :case_display
# case du tableau pour transformer le 1 en X par exemple
  def initialize(case_display)
    @case_display = case_display.to_s
  end

  def to_s
    return "#{case_display}"
  end
end