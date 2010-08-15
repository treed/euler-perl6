sub triangle-number($index) {
    return [+] 1..$index;
}

sub factors($number) {
    my @factors;
    for 1..($number / 2) -> $try {
        @factors.push($try) if $number %% $try;
    }
    @factors.push($number);
}

my $triangle = 1;
for 2..* -> $n {
    $triangle += $n;
    my $factors = factors($triangle);
    say $factors.elems;
    if $factors.elems > 500 {
        say $triangle;
        exit;
    }
}
