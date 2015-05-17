defmodule Mal.Step0_Repl do

	defp read(exp) do
		IO.gets exp
	end

	defp eval(exp) do
		exp
	end

	defp print(exp) do
		IO.write exp
	end

	defp rep() do
		print eval read "user> "
		rep
	end

	def start() do
		rep
	end
end

# Mal.Step0_Repl.start
