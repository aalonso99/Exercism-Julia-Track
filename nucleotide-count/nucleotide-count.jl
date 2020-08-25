"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    nucleotides_count = Dict(base => 0 for base in "ACGT")
    for n in strand
        if n ∈ keys(nucleotides_count)
            nucleotides_count[n] += 1
        else
            throw(DomainError(n))
        end
    end
    return nucleotides_count
end
