defmodule Mal.Reader do

	@regex ~r/[\s,]*(~@|[\[\]{}()'`~^@]|"(?:\\.|[^\\"])*"|;.*|[^\s\[\]{}('"`,;)]*)/

	def start_link(tokens \\ []) do
		Agent.start_link fn -> %{:tokens => tokens, :position => 0} end
	end

	def next(reader) do
		# get the next token
		head = peek(reader)
		# update the reader state
		Agent.update(reader, fn %{:tokens => tokens, :position => position} ->
			%{:tokens => tl(tokens), :position => position + 1}
		end)

		head
	end

	def peek(reader) do
		Agent.get(reader, fn %{:tokens => tokens} -> 
			hd tokens
		end)
	end

	defp read_list do

	end

	defp read_atom do

	end

	defp read_form(reader) do

	end

	def tokenize(str) do 
		{:ok, reader} = start_link(Regex.scan(@regex, str))
		read_form(reader)
		reader
	end

	def read_str do

	end
end