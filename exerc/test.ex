defmodule Test do
  def double(n) do
    n + n
  end
  # fahrenheit to celcius
  def ftoc(f) do
    (f-32)/1.8
  end
  # area of rectangle
  def aofr(a,b) do
    a*b
  end
  # area of square
  def aofs(a) do
    aofr(a,a)
  end
  # area of circle
  def aofc(r) do
    r * r * :math.pi
  end
end
