defmodule GccWorkshopElixir do
  @moduledoc """
  Documentation for `GccWorkshopElixir`.
  """

  # Pattern Matching
  def course_name("MATH1200"), do: "Calculus I"
  def course_name("CIS1250"), do: "Software Design I"
  def course_name("CIS1300"), do: "Introduction to Programming"
  def course_name("CIS1910"), do: "Discrete Structures I"
  def course_name(_unknown_course), do: "Unknown Course"

  # Pipe operator
  def transform_course(course_code) do
    course_code
    |> course_name()
    |> String.upcase()
    |> String.reverse()
    |> String.length()
  end

  # Without Pipe
  def transform_course_without_pipe(course_code) do
    String.length(String.reverse(String.upcase(course_name(course_code))))
  end

  # Enumeration
  def square(numbers) do
    Enum.map(numbers, fn x -> x * x end)
  end

  def filter_even(numbers) do
    Enum.filter(numbers, fn x -> rem(x, 2) == 0 end)
  end
end
