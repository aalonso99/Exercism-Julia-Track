function spiral_matrix(n)
    matrix = Matrix{Int}(undef,n,n)
    elem = i = j = 1
    state = 0
    round = 0
    max = n*n
    
    while elem <= max
        
        matrix[i,j] = elem
        
        if state == 0
            if j == n-round
                state = 1
                i += 1
            else
                j += 1
            end
        elseif state == 1
            if i == n-round
                state = 2
                j -= 1
            else
                i += 1
            end
        elseif state == 2
            if j == 1+round
                state = 3
                i -= 1
            else 
                j -= 1
            end
        elseif state == 3
            if i == round+2
                state = 0
                round += 1
                j += 1
            else
                i -= 1
            end
        end
        
        elem += 1
    end
    
    return matrix
end
