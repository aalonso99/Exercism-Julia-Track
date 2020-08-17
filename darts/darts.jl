function score(x, y)
    d = hypot(x,y)
    if d>10 return 0 end
    if d>5 return 1 end
    if d>1 return 5 end
    return 10
end
