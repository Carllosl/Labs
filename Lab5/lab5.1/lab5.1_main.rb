# frozen_string_literal: true

def func(x, y)
  2 * Math.cos(x - Math::PI / 6) / (1.0 / 2 + Math.sin(y)**2)
end
