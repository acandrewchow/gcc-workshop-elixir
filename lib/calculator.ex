defmodule Calculator do
  def calculate(:add, a, b), do: a + b
  def calculate(:subtract, a, b), do: a - b
  def calculate(:multiply, a, b), do: a * b
  def calculate(:divide, a, b) when b != 0, do: a / b
  def calculate(_operation, _a, _b), do: "Invalid operation"
end

# Calculator.calculate(:add, 5, 3)
# Calculator.calculate(:divide, 10, 2)
