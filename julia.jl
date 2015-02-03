# Julia function
function julia(z, iters::Int64)
    c=-0.75+0.1im
    for n = 1:iters
        if abs(z) > 2
            return n-1
        end
        z = z^2 + c
    end
    return iters
end
