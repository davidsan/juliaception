include("julia.jl")

# Size
SIZE = 600

# Mapper
for line in eachline(STDIN)
  coords = split(line, " ")
  x = int(coords[1])
  y = int(coords[2])
  c = complex((-2 + x * 4.0 / SIZE), (-2.0 + y * 4.0 / SIZE))
  println("$x $y ", julia(c, 256))
end
