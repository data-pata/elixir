defmodule Rec do
    @doc """
    """
  # CAN I USE CASE FOR TWO VARS?
  # def prod(m, n) do
  #   case m do
  #     0 -> 0
  #     m when m > 0 ->
  #        n + prod(m-1,n)
  #     n -> m + prod(m, n-1)
  #   end
  # end

  def prod(m, n) do
    cond do
      m == 0 or n == 0 -> 0
      m > 0 ->
         n + prod(m-1,n)
      n > 0 ->
        m + prod(m, n-1)
      true ->
        -m + prod(m,n+1)
    end
  end

  def qpow(0, _n) do 0 end
  def qpow(_m, 0) do 1 end
  def qpow(1, _n) do 1 end
  def qpow(m, 1) do m end
  def qpow(m, n) do
    cond do
      n < 0 -> "err: neg exp"
      rem(n, 2) == 1 ->
        prod(m, qpow(m, n-1))
      true ->
        prod(qpow(m, div(n,2)), qpow(m, div(n,2)))
    end
  end

  def pow(m,n) do
    cond do
      n < 0 -> "err: neg exp"
      n == 1 -> m
      m == 0 -> 0
      n == 0 -> 1
      true -> prod(m, pow(m, n-1))
    end
  end


end
