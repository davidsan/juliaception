include("pgm.jl")
include("julia.jl")

SIZE = 600
pic = Array(Int64, SIZE, SIZE)

for line in eachline(STDIN)
    coords = split(line, " ")
    x = int(coords[1])+1
    y = int(coords[2])+1
    c = int(coords[3])
    pic[y,x] = c
end

pgmwrite(pic, "output.pgm")
