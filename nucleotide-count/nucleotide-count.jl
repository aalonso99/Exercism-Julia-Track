"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    nucleotides_count = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    valid_nucl = Set(['A', 'C', 'G', 'T'])
    for n in strand
        if n ∈ valid_nucl
            nucleotides_count[n] += 1
        else
            throw(DomainError(n))
        end
    end
    return nucleotides_count
end
