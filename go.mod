module example.com/me/hello

go 1.13

require (
	local.packages/goodbye v0.0.0
	rsc.io/quote v1.5.2
)

replace local.packages/goodbye => ./goodbye
