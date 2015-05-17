defmodule Mal.ReaderTest do
	use ExUnit.Case, async: true

	test "peek" do
		# tokens = Mal.Reader.tokenize("(+ 1 1)")
		reader = Mal.Reader.tokenize("(+ 1 1)")
		assert Mal.Reader.peek(reader) == "("
	end

	test "next" do
		assert 1 + 1 == 2
	end
	
end