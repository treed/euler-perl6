# Solved in 2.2 seconds
# Tried these as multis and they didn't work :-(
sub lcm($a, $b) {
    return 0 if $a == 0 and $b == 0;
    return $a * $b / gcd($a, $b);
}

sub gcd($a,$b) {
    return $a if $b == 0;
    return gcd($b, $a % $b);
}

sub reduce($op, @args) {
    return @args[0] if @args.elems == 1;
    @args.push(1) unless @args.elems %% 2;
    my @result;
    for @args -> $a, $b {
        @result.push($op.($a, $b));
    }

    return reduce($op, @result);
}

say reduce(&lcm, 1..20);
