macro mytime(ex)
    quote
        $ex
        approx = @elapsed $ex
        n = iround(0.5/approx)
        res = [@elapsed $ex for i=1:n]
        println("Minimum iteration: $(minimum(res)), median: $(median(res)) over $n iterations.")
    end
end
