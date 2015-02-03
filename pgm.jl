# PGM writer
function pgmwrite(pic, file::String)
    s = open(file, "w")
    write(s, "P5\n")
    n, m = size(pic)
    write(s, "$m $n 255\n")
    for i=1:n, j=1:m
        p = pic[i,j]
        write(s, uint8(p))
    end
    close(s)
end
